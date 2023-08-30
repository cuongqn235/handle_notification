part of 'push_notification_bloc.dart';

@freezed
class PushNotificationState with _$PushNotificationState {
  const factory PushNotificationState.initialization() = _initialization;
  const factory PushNotificationState.notifyReceived({
    required RemoteMessage notify,
  }) = PushNotificationNotifyReceived;

  const factory PushNotificationState.onTapNofity({
    required RemoteMessage data,
  }) = _onTapNotify;
}
