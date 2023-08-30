// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PushNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(RemoteMessage notify) notifyReceived,
    required TResult Function(RemoteMessage data) onTapNofity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function(RemoteMessage notify)? notifyReceived,
    TResult? Function(RemoteMessage data)? onTapNofity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(RemoteMessage notify)? notifyReceived,
    TResult Function(RemoteMessage data)? onTapNofity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialization value) initialization,
    required TResult Function(PushNotificationNotifyReceived value)
        notifyReceived,
    required TResult Function(_onTapNotify value) onTapNofity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialization value)? initialization,
    TResult? Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult? Function(_onTapNotify value)? onTapNofity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialization value)? initialization,
    TResult Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult Function(_onTapNotify value)? onTapNofity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationStateCopyWith<$Res> {
  factory $PushNotificationStateCopyWith(PushNotificationState value,
          $Res Function(PushNotificationState) then) =
      _$PushNotificationStateCopyWithImpl<$Res, PushNotificationState>;
}

/// @nodoc
class _$PushNotificationStateCopyWithImpl<$Res,
        $Val extends PushNotificationState>
    implements $PushNotificationStateCopyWith<$Res> {
  _$PushNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_initializationCopyWith<$Res> {
  factory _$$_initializationCopyWith(
          _$_initialization value, $Res Function(_$_initialization) then) =
      __$$_initializationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_initializationCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res, _$_initialization>
    implements _$$_initializationCopyWith<$Res> {
  __$$_initializationCopyWithImpl(
      _$_initialization _value, $Res Function(_$_initialization) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_initialization
    with DiagnosticableTreeMixin
    implements _initialization {
  const _$_initialization();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushNotificationState.initialization()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PushNotificationState.initialization'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_initialization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(RemoteMessage notify) notifyReceived,
    required TResult Function(RemoteMessage data) onTapNofity,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function(RemoteMessage notify)? notifyReceived,
    TResult? Function(RemoteMessage data)? onTapNofity,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(RemoteMessage notify)? notifyReceived,
    TResult Function(RemoteMessage data)? onTapNofity,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialization value) initialization,
    required TResult Function(PushNotificationNotifyReceived value)
        notifyReceived,
    required TResult Function(_onTapNotify value) onTapNofity,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialization value)? initialization,
    TResult? Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult? Function(_onTapNotify value)? onTapNofity,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialization value)? initialization,
    TResult Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult Function(_onTapNotify value)? onTapNofity,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class _initialization implements PushNotificationState {
  const factory _initialization() = _$_initialization;
}

/// @nodoc
abstract class _$$PushNotificationNotifyReceivedCopyWith<$Res> {
  factory _$$PushNotificationNotifyReceivedCopyWith(
          _$PushNotificationNotifyReceived value,
          $Res Function(_$PushNotificationNotifyReceived) then) =
      __$$PushNotificationNotifyReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage notify});
}

/// @nodoc
class __$$PushNotificationNotifyReceivedCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res,
        _$PushNotificationNotifyReceived>
    implements _$$PushNotificationNotifyReceivedCopyWith<$Res> {
  __$$PushNotificationNotifyReceivedCopyWithImpl(
      _$PushNotificationNotifyReceived _value,
      $Res Function(_$PushNotificationNotifyReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notify = null,
  }) {
    return _then(_$PushNotificationNotifyReceived(
      notify: null == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$PushNotificationNotifyReceived
    with DiagnosticableTreeMixin
    implements PushNotificationNotifyReceived {
  const _$PushNotificationNotifyReceived({required this.notify});

  @override
  final RemoteMessage notify;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushNotificationState.notifyReceived(notify: $notify)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PushNotificationState.notifyReceived'))
      ..add(DiagnosticsProperty('notify', notify));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationNotifyReceived &&
            (identical(other.notify, notify) || other.notify == notify));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationNotifyReceivedCopyWith<_$PushNotificationNotifyReceived>
      get copyWith => __$$PushNotificationNotifyReceivedCopyWithImpl<
          _$PushNotificationNotifyReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(RemoteMessage notify) notifyReceived,
    required TResult Function(RemoteMessage data) onTapNofity,
  }) {
    return notifyReceived(notify);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function(RemoteMessage notify)? notifyReceived,
    TResult? Function(RemoteMessage data)? onTapNofity,
  }) {
    return notifyReceived?.call(notify);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(RemoteMessage notify)? notifyReceived,
    TResult Function(RemoteMessage data)? onTapNofity,
    required TResult orElse(),
  }) {
    if (notifyReceived != null) {
      return notifyReceived(notify);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialization value) initialization,
    required TResult Function(PushNotificationNotifyReceived value)
        notifyReceived,
    required TResult Function(_onTapNotify value) onTapNofity,
  }) {
    return notifyReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialization value)? initialization,
    TResult? Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult? Function(_onTapNotify value)? onTapNofity,
  }) {
    return notifyReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialization value)? initialization,
    TResult Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult Function(_onTapNotify value)? onTapNofity,
    required TResult orElse(),
  }) {
    if (notifyReceived != null) {
      return notifyReceived(this);
    }
    return orElse();
  }
}

abstract class PushNotificationNotifyReceived implements PushNotificationState {
  const factory PushNotificationNotifyReceived(
      {required final RemoteMessage notify}) = _$PushNotificationNotifyReceived;

  RemoteMessage get notify;
  @JsonKey(ignore: true)
  _$$PushNotificationNotifyReceivedCopyWith<_$PushNotificationNotifyReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_onTapNotifyCopyWith<$Res> {
  factory _$$_onTapNotifyCopyWith(
          _$_onTapNotify value, $Res Function(_$_onTapNotify) then) =
      __$$_onTapNotifyCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage data});
}

/// @nodoc
class __$$_onTapNotifyCopyWithImpl<$Res>
    extends _$PushNotificationStateCopyWithImpl<$Res, _$_onTapNotify>
    implements _$$_onTapNotifyCopyWith<$Res> {
  __$$_onTapNotifyCopyWithImpl(
      _$_onTapNotify _value, $Res Function(_$_onTapNotify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_onTapNotify(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_onTapNotify with DiagnosticableTreeMixin implements _onTapNotify {
  const _$_onTapNotify({required this.data});

  @override
  final RemoteMessage data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PushNotificationState.onTapNofity(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PushNotificationState.onTapNofity'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_onTapNotify &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_onTapNotifyCopyWith<_$_onTapNotify> get copyWith =>
      __$$_onTapNotifyCopyWithImpl<_$_onTapNotify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(RemoteMessage notify) notifyReceived,
    required TResult Function(RemoteMessage data) onTapNofity,
  }) {
    return onTapNofity(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function(RemoteMessage notify)? notifyReceived,
    TResult? Function(RemoteMessage data)? onTapNofity,
  }) {
    return onTapNofity?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(RemoteMessage notify)? notifyReceived,
    TResult Function(RemoteMessage data)? onTapNofity,
    required TResult orElse(),
  }) {
    if (onTapNofity != null) {
      return onTapNofity(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialization value) initialization,
    required TResult Function(PushNotificationNotifyReceived value)
        notifyReceived,
    required TResult Function(_onTapNotify value) onTapNofity,
  }) {
    return onTapNofity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialization value)? initialization,
    TResult? Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult? Function(_onTapNotify value)? onTapNofity,
  }) {
    return onTapNofity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialization value)? initialization,
    TResult Function(PushNotificationNotifyReceived value)? notifyReceived,
    TResult Function(_onTapNotify value)? onTapNofity,
    required TResult orElse(),
  }) {
    if (onTapNofity != null) {
      return onTapNofity(this);
    }
    return orElse();
  }
}

abstract class _onTapNotify implements PushNotificationState {
  const factory _onTapNotify({required final RemoteMessage data}) =
      _$_onTapNotify;

  RemoteMessage get data;
  @JsonKey(ignore: true)
  _$$_onTapNotifyCopyWith<_$_onTapNotify> get copyWith =>
      throw _privateConstructorUsedError;
}
