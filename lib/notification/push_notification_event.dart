part of 'push_notification_bloc.dart';

abstract class PushNotificationEvent {}

class PushNotificationEventOnStart extends PushNotificationEvent {}

class PushNotificationEventOnReceived extends PushNotificationEvent {
  final RemoteMessage notify;
  PushNotificationEventOnReceived(this.notify);
}

class PushNotificationEventOnTap extends PushNotificationEvent {
  final RemoteMessage notify;
  PushNotificationEventOnTap(this.notify);
}
