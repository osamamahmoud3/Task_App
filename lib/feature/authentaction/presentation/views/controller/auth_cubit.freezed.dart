// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<$Res> {
  factory _$$SignUpLoadingImplCopyWith(
          _$SignUpLoadingImpl value, $Res Function(_$SignUpLoadingImpl) then) =
      __$$SignUpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpLoadingImpl>
    implements _$$SignUpLoadingImplCopyWith<$Res> {
  __$$SignUpLoadingImplCopyWithImpl(
      _$SignUpLoadingImpl _value, $Res Function(_$SignUpLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpLoadingImpl implements SignUpLoading {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'AuthState.signUpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading implements AuthState {
  const factory SignUpLoading() = _$SignUpLoadingImpl;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<$Res> {
  factory _$$SignUpSuccessImplCopyWith(
          _$SignUpSuccessImpl value, $Res Function(_$SignUpSuccessImpl) then) =
      __$$SignUpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpResponseBody signUpResponseBody});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpSuccessImpl>
    implements _$$SignUpSuccessImplCopyWith<$Res> {
  __$$SignUpSuccessImplCopyWithImpl(
      _$SignUpSuccessImpl _value, $Res Function(_$SignUpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpResponseBody = null,
  }) {
    return _then(_$SignUpSuccessImpl(
      null == signUpResponseBody
          ? _value.signUpResponseBody
          : signUpResponseBody // ignore: cast_nullable_to_non_nullable
              as SignUpResponseBody,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl implements SignUpSuccess {
  const _$SignUpSuccessImpl(this.signUpResponseBody);

  @override
  final SignUpResponseBody signUpResponseBody;

  @override
  String toString() {
    return 'AuthState.signUpSuccess(signUpResponseBody: $signUpResponseBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl &&
            (identical(other.signUpResponseBody, signUpResponseBody) ||
                other.signUpResponseBody == signUpResponseBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpResponseBody);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<_$SignUpSuccessImpl> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<_$SignUpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return signUpSuccess(signUpResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return signUpSuccess?.call(signUpResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(signUpResponseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess implements AuthState {
  const factory SignUpSuccess(final SignUpResponseBody signUpResponseBody) =
      _$SignUpSuccessImpl;

  SignUpResponseBody get signUpResponseBody;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessImplCopyWith<_$SignUpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureImplCopyWith<$Res> {
  factory _$$SignUpFailureImplCopyWith(
          _$SignUpFailureImpl value, $Res Function(_$SignUpFailureImpl) then) =
      __$$SignUpFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SignUpFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpFailureImpl>
    implements _$$SignUpFailureImplCopyWith<$Res> {
  __$$SignUpFailureImplCopyWithImpl(
      _$SignUpFailureImpl _value, $Res Function(_$SignUpFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SignUpFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailureImpl implements SignUpFailure {
  const _$SignUpFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signUpFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      __$$SignUpFailureImplCopyWithImpl<_$SignUpFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return signUpFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return signUpFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return signUpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return signUpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements AuthState {
  const factory SignUpFailure(final String errorMessage) = _$SignUpFailureImpl;

  String get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.loginError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return loginError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return loginError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError implements AuthState {
  const factory LoginError(final String errorMessage) = _$LoginErrorImpl;

  String get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseBody loginResponseBody});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponseBody = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == loginResponseBody
          ? _value.loginResponseBody
          : loginResponseBody // ignore: cast_nullable_to_non_nullable
              as LoginResponseBody,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl(this.loginResponseBody);

  @override
  final LoginResponseBody loginResponseBody;

  @override
  String toString() {
    return 'AuthState.loginSuccess(loginResponseBody: $loginResponseBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.loginResponseBody, loginResponseBody) ||
                other.loginResponseBody == loginResponseBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponseBody);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return loginSuccess(loginResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return loginSuccess?.call(loginResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements AuthState {
  const factory LoginSuccess(final LoginResponseBody loginResponseBody) =
      _$LoginSuccessImpl;

  LoginResponseBody get loginResponseBody;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpLoading,
    required TResult Function(SignUpResponseBody signUpResponseBody)
        signUpSuccess,
    required TResult Function(String errorMessage) signUpFailure,
    required TResult Function(String errorMessage) loginError,
    required TResult Function(LoginResponseBody loginResponseBody) loginSuccess,
    required TResult Function() loginLoading,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpLoading,
    TResult? Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult? Function(String errorMessage)? signUpFailure,
    TResult? Function(String errorMessage)? loginError,
    TResult? Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult? Function()? loginLoading,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpLoading,
    TResult Function(SignUpResponseBody signUpResponseBody)? signUpSuccess,
    TResult Function(String errorMessage)? signUpFailure,
    TResult Function(String errorMessage)? loginError,
    TResult Function(LoginResponseBody loginResponseBody)? loginSuccess,
    TResult Function()? loginLoading,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignUpSuccess value) signUpSuccess,
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LoginError value) loginError,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginLoading value) loginLoading,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignUpSuccess value)? signUpSuccess,
    TResult? Function(SignUpFailure value)? signUpFailure,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginLoading value)? loginLoading,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignUpSuccess value)? signUpSuccess,
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LoginError value)? loginError,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginLoading value)? loginLoading,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements AuthState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}
