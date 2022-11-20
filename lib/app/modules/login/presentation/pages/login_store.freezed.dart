// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessState value) success,
    required TResult Function(_LoginFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessState value)? success,
    TResult? Function(_LoginFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessState value)? success,
    TResult Function(_LoginFailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginInitialStateCopyWith<$Res> {
  factory _$$_LoginInitialStateCopyWith(_$_LoginInitialState value,
          $Res Function(_$_LoginInitialState) then) =
      __$$_LoginInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginInitialStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginInitialState>
    implements _$$_LoginInitialStateCopyWith<$Res> {
  __$$_LoginInitialStateCopyWithImpl(
      _$_LoginInitialState _value, $Res Function(_$_LoginInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginInitialState implements _LoginInitialState {
  _$_LoginInitialState();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessState value) success,
    required TResult Function(_LoginFailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessState value)? success,
    TResult? Function(_LoginFailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessState value)? success,
    TResult Function(_LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginInitialState implements LoginState {
  factory _LoginInitialState() = _$_LoginInitialState;
}

/// @nodoc
abstract class _$$_LoginLoadingStateCopyWith<$Res> {
  factory _$$_LoginLoadingStateCopyWith(_$_LoginLoadingState value,
          $Res Function(_$_LoginLoadingState) then) =
      __$$_LoginLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginLoadingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginLoadingState>
    implements _$$_LoginLoadingStateCopyWith<$Res> {
  __$$_LoginLoadingStateCopyWithImpl(
      _$_LoginLoadingState _value, $Res Function(_$_LoginLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginLoadingState implements _LoginLoadingState {
  _$_LoginLoadingState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessState value) success,
    required TResult Function(_LoginFailedState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessState value)? success,
    TResult? Function(_LoginFailedState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessState value)? success,
    TResult Function(_LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoadingState implements LoginState {
  factory _LoginLoadingState() = _$_LoginLoadingState;
}

/// @nodoc
abstract class _$$_LoginSuccessStateCopyWith<$Res> {
  factory _$$_LoginSuccessStateCopyWith(_$_LoginSuccessState value,
          $Res Function(_$_LoginSuccessState) then) =
      __$$_LoginSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginSuccessStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginSuccessState>
    implements _$$_LoginSuccessStateCopyWith<$Res> {
  __$$_LoginSuccessStateCopyWithImpl(
      _$_LoginSuccessState _value, $Res Function(_$_LoginSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginSuccessState implements _LoginSuccessState {
  _$_LoginSuccessState();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessState value) success,
    required TResult Function(_LoginFailedState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessState value)? success,
    TResult? Function(_LoginFailedState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessState value)? success,
    TResult Function(_LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccessState implements LoginState {
  factory _LoginSuccessState() = _$_LoginSuccessState;
}

/// @nodoc
abstract class _$$_LoginFailedStateCopyWith<$Res> {
  factory _$$_LoginFailedStateCopyWith(
          _$_LoginFailedState value, $Res Function(_$_LoginFailedState) then) =
      __$$_LoginFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoginFailedStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginFailedState>
    implements _$$_LoginFailedStateCopyWith<$Res> {
  __$$_LoginFailedStateCopyWithImpl(
      _$_LoginFailedState _value, $Res Function(_$_LoginFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoginFailedState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFailedState implements _LoginFailedState {
  _$_LoginFailedState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFailedState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailedStateCopyWith<_$_LoginFailedState> get copyWith =>
      __$$_LoginFailedStateCopyWithImpl<_$_LoginFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginSuccessState value) success,
    required TResult Function(_LoginFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginLoadingState value)? loading,
    TResult? Function(_LoginSuccessState value)? success,
    TResult? Function(_LoginFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginSuccessState value)? success,
    TResult Function(_LoginFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailedState implements LoginState {
  factory _LoginFailedState(final String message) = _$_LoginFailedState;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoginFailedStateCopyWith<_$_LoginFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
