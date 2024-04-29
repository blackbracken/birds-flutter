// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomeUiState {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeUiStateCopyWith<WelcomeUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeUiStateCopyWith<$Res> {
  factory $WelcomeUiStateCopyWith(
          WelcomeUiState value, $Res Function(WelcomeUiState) then) =
      _$WelcomeUiStateCopyWithImpl<$Res, WelcomeUiState>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class _$WelcomeUiStateCopyWithImpl<$Res, $Val extends WelcomeUiState>
    implements $WelcomeUiStateCopyWith<$Res> {
  _$WelcomeUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeUiStateImplCopyWith<$Res>
    implements $WelcomeUiStateCopyWith<$Res> {
  factory _$$WelcomeUiStateImplCopyWith(_$WelcomeUiStateImpl value,
          $Res Function(_$WelcomeUiStateImpl) then) =
      __$$WelcomeUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$WelcomeUiStateImplCopyWithImpl<$Res>
    extends _$WelcomeUiStateCopyWithImpl<$Res, _$WelcomeUiStateImpl>
    implements _$$WelcomeUiStateImplCopyWith<$Res> {
  __$$WelcomeUiStateImplCopyWithImpl(
      _$WelcomeUiStateImpl _value, $Res Function(_$WelcomeUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$WelcomeUiStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WelcomeUiStateImpl implements _WelcomeUiState {
  const _$WelcomeUiStateImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'WelcomeUiState(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeUiStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeUiStateImplCopyWith<_$WelcomeUiStateImpl> get copyWith =>
      __$$WelcomeUiStateImplCopyWithImpl<_$WelcomeUiStateImpl>(
          this, _$identity);
}

abstract class _WelcomeUiState implements WelcomeUiState {
  const factory _WelcomeUiState(
      {required final String userName,
      required final String password}) = _$WelcomeUiStateImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$WelcomeUiStateImplCopyWith<_$WelcomeUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
