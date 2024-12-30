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
mixin _$WelcomeUiModel {
  bool get isInitializing => throw _privateConstructorUsedError;
  Future<void> Function() get onInitialized =>
      throw _privateConstructorUsedError;
  void Function() get onClickedRegister => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeUiModelCopyWith<WelcomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeUiModelCopyWith<$Res> {
  factory $WelcomeUiModelCopyWith(
          WelcomeUiModel value, $Res Function(WelcomeUiModel) then) =
      _$WelcomeUiModelCopyWithImpl<$Res, WelcomeUiModel>;
  @useResult
  $Res call(
      {bool isInitializing,
      Future<void> Function() onInitialized,
      void Function() onClickedRegister});
}

/// @nodoc
class _$WelcomeUiModelCopyWithImpl<$Res, $Val extends WelcomeUiModel>
    implements $WelcomeUiModelCopyWith<$Res> {
  _$WelcomeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? onInitialized = null,
    Object? onClickedRegister = null,
  }) {
    return _then(_value.copyWith(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      onInitialized: null == onInitialized
          ? _value.onInitialized
          : onInitialized // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(),
      onClickedRegister: null == onClickedRegister
          ? _value.onClickedRegister
          : onClickedRegister // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeUiModelImplCopyWith<$Res>
    implements $WelcomeUiModelCopyWith<$Res> {
  factory _$$WelcomeUiModelImplCopyWith(_$WelcomeUiModelImpl value,
          $Res Function(_$WelcomeUiModelImpl) then) =
      __$$WelcomeUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitializing,
      Future<void> Function() onInitialized,
      void Function() onClickedRegister});
}

/// @nodoc
class __$$WelcomeUiModelImplCopyWithImpl<$Res>
    extends _$WelcomeUiModelCopyWithImpl<$Res, _$WelcomeUiModelImpl>
    implements _$$WelcomeUiModelImplCopyWith<$Res> {
  __$$WelcomeUiModelImplCopyWithImpl(
      _$WelcomeUiModelImpl _value, $Res Function(_$WelcomeUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? onInitialized = null,
    Object? onClickedRegister = null,
  }) {
    return _then(_$WelcomeUiModelImpl(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      onInitialized: null == onInitialized
          ? _value.onInitialized
          : onInitialized // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(),
      onClickedRegister: null == onClickedRegister
          ? _value.onClickedRegister
          : onClickedRegister // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$WelcomeUiModelImpl implements _WelcomeUiModel {
  const _$WelcomeUiModelImpl(
      {required this.isInitializing,
      required this.onInitialized,
      required this.onClickedRegister});

  @override
  final bool isInitializing;
  @override
  final Future<void> Function() onInitialized;
  @override
  final void Function() onClickedRegister;

  @override
  String toString() {
    return 'WelcomeUiModel(isInitializing: $isInitializing, onInitialized: $onInitialized, onClickedRegister: $onClickedRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeUiModelImpl &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.onInitialized, onInitialized) ||
                other.onInitialized == onInitialized) &&
            (identical(other.onClickedRegister, onClickedRegister) ||
                other.onClickedRegister == onClickedRegister));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isInitializing, onInitialized, onClickedRegister);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeUiModelImplCopyWith<_$WelcomeUiModelImpl> get copyWith =>
      __$$WelcomeUiModelImplCopyWithImpl<_$WelcomeUiModelImpl>(
          this, _$identity);
}

abstract class _WelcomeUiModel implements WelcomeUiModel {
  const factory _WelcomeUiModel(
      {required final bool isInitializing,
      required final Future<void> Function() onInitialized,
      required final void Function() onClickedRegister}) = _$WelcomeUiModelImpl;

  @override
  bool get isInitializing;
  @override
  Future<void> Function() get onInitialized;
  @override
  void Function() get onClickedRegister;
  @override
  @JsonKey(ignore: true)
  _$$WelcomeUiModelImplCopyWith<_$WelcomeUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
