// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUiState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUiStateCopyWith<RegisterUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUiStateCopyWith<$Res> {
  factory $RegisterUiStateCopyWith(
          RegisterUiState value, $Res Function(RegisterUiState) then) =
      _$RegisterUiStateCopyWithImpl<$Res, RegisterUiState>;
  @useResult
  $Res call({String email, String password, String userName});
}

/// @nodoc
class _$RegisterUiStateCopyWithImpl<$Res, $Val extends RegisterUiState>
    implements $RegisterUiStateCopyWith<$Res> {
  _$RegisterUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUiStateImplCopyWith<$Res>
    implements $RegisterUiStateCopyWith<$Res> {
  factory _$$RegisterUiStateImplCopyWith(_$RegisterUiStateImpl value,
          $Res Function(_$RegisterUiStateImpl) then) =
      __$$RegisterUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String userName});
}

/// @nodoc
class __$$RegisterUiStateImplCopyWithImpl<$Res>
    extends _$RegisterUiStateCopyWithImpl<$Res, _$RegisterUiStateImpl>
    implements _$$RegisterUiStateImplCopyWith<$Res> {
  __$$RegisterUiStateImplCopyWithImpl(
      _$RegisterUiStateImpl _value, $Res Function(_$RegisterUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userName = null,
  }) {
    return _then(_$RegisterUiStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUiStateImpl implements _RegisterUiState {
  const _$RegisterUiStateImpl(
      {required this.email, required this.password, required this.userName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String userName;

  @override
  String toString() {
    return 'RegisterUiState(email: $email, password: $password, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUiStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUiStateImplCopyWith<_$RegisterUiStateImpl> get copyWith =>
      __$$RegisterUiStateImplCopyWithImpl<_$RegisterUiStateImpl>(
          this, _$identity);
}

abstract class _RegisterUiState implements RegisterUiState {
  const factory _RegisterUiState(
      {required final String email,
      required final String password,
      required final String userName}) = _$RegisterUiStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUiStateImplCopyWith<_$RegisterUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
