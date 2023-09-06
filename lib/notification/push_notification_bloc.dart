import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'push_notification_state.dart';
part 'push_notification_event.dart';
part 'push_notification_bloc.freezed.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  showFlutterNotification(message,
      flutterLocalNotificationsPlugin: FlutterLocalNotificationsPlugin());
}

NotificationDetails notificationDefault(String title) =>
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'default_notification_channel_id',
        'default',
        icon: '@mipmap/ic_launcher',
        priority: Priority.high,
        importance: Importance.max,
      ),
      iOS: DarwinNotificationDetails(
        presentSound: true,
        presentAlert: true,
      ),
    );

void showFlutterNotification(
  RemoteMessage message, {
  required FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
}) {
  try {
    debugPrint('Show local notification!!!');
    flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.notification?.title,
        message.notification?.body,
        notificationDefault(message.notification?.title ?? '')
        // payload: jsonEncode(
        //   {
        //     'title': message.notification?.title,
        //     'content': message.notification?.body,
        //   },),
        );
  } on Exception catch (e) {
    print(
      e,
    );
  }
}

class PushNotificationBloc
    extends Bloc<PushNotificationEvent, PushNotificationState> {
  PushNotificationBloc() : super(const PushNotificationState.initialization()) {
    on<PushNotificationEventOnStart>(_onStart);
    on<PushNotificationEventOnTap>(_onTap);
    on<PushNotificationEventOnReceived>(_onReceived);
  }
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  FutureOr<void> _onStart(PushNotificationEventOnStart event,
      Emitter<PushNotificationState> emit) async {
    final fcm = FirebaseMessaging.instance;
    final fcmToken = await fcm.getToken();
    if (kDebugMode) {
      print(fcmToken);
    }

    _onTapNotifyFrom(fcm);

    flutterLocalNotificationsPlugin = await setupFlutterNotifications(
      // handling tap message
      onDidReceiveNotificationResponse: (details) {
        try {
          add(
            PushNotificationEventOnTap(
              RemoteMessage(
                  notification: RemoteNotification(
                title: details.input,
                body: details.payload,
              )),
            ),
          );
        } on Exception catch (e) {
          if (kDebugMode) {
            print(e);
          }
        }
      },
    );

    // Receive notification on forceground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('New notification!');
      flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.notification?.title,
        message.notification?.body,
        notificationDefault(message.notification?.title ?? ''),
        payload: '',
      );
    });

    // Receive notification on background and terminal
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Android
    await fcm.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    if (Platform.isIOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(const AndroidNotificationChannel(
            'high_importance_channel', // id
            'High Importance Notifications', // title
            description:
                'This channel is used for important notifications.', // description
            importance: Importance.max,
          ));
    }

    await Permission.notification.request();
  }

  Future<FlutterLocalNotificationsPlugin> setupFlutterNotifications({
    void Function(NotificationResponse)? onDidReceiveNotificationResponse,
    bool initWithChannel = true,
  }) async {
    final localNotificationsPlugin = FlutterLocalNotificationsPlugin();

    if (Platform.isAndroid) {
      await localNotificationsPlugin.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings(
            '@mipmap/ic_launcher',
          ),
        ),
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      );
    } else if (Platform.isIOS) {
      await localNotificationsPlugin.initialize(
        const InitializationSettings(
          iOS: DarwinInitializationSettings(),
        ),
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      );
    }
    return localNotificationsPlugin;
  }

  FutureOr<void> _onTap(
      PushNotificationEventOnTap event, Emitter<PushNotificationState> emit) {
    emit(PushNotificationState.onTapNofity(data: event.notify));
  }

  FutureOr<void> _onReceived(PushNotificationEventOnReceived event,
      Emitter<PushNotificationState> emit) {
    flutterLocalNotificationsPlugin.show(
      1,
      event.notify.notification?.title ?? 'title',
      event.notify.notification?.body ?? 'body',
      const NotificationDetails(
          android: AndroidNotificationDetails(
        'Test_notify',
        'Cuong',
        priority: Priority.high,
      )),
      payload: event.notify.notification?.title ?? 'payload',
    );
    emit(PushNotificationState.notifyReceived(notify: event.notify));
  }

  void _onTapNotifyFrom(FirebaseMessaging fcm) async {
    // on tap from terminal
    final initializationNotification = await fcm.getInitialMessage();
    if (initializationNotification != null) {
      add(PushNotificationEventOnTap(initializationNotification));
    }

    // handling tap message open from background app
    FirebaseMessaging.onMessageOpenedApp.listen((mess) async {
      debugPrint('Tap Message From Firebase');
      add(
        PushNotificationEventOnTap(
          mess,
        ),
      );
    });
  }
}
