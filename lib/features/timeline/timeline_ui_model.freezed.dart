// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimelineUiModel {
  void Function() get onClickedPost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineUiModelCopyWith<TimelineUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineUiModelCopyWith<$Res> {
  factory $TimelineUiModelCopyWith(
          TimelineUiModel value, $Res Function(TimelineUiModel) then) =
      _$TimelineUiModelCopyWithImpl<$Res, TimelineUiModel>;
  @useResult
  $Res call({void Function() onClickedPost});
}

/// @nodoc
class _$TimelineUiModelCopyWithImpl<$Res, $Val extends TimelineUiModel>
    implements $TimelineUiModelCopyWith<$Res> {
  _$TimelineUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onClickedPost = null,
  }) {
    return _then(_value.copyWith(
      onClickedPost: null == onClickedPost
          ? _value.onClickedPost
          : onClickedPost // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineUiModelImplCopyWith<$Res>
    implements $TimelineUiModelCopyWith<$Res> {
  factory _$$TimelineUiModelImplCopyWith(_$TimelineUiModelImpl value,
          $Res Function(_$TimelineUiModelImpl) then) =
      __$$TimelineUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function() onClickedPost});
}

/// @nodoc
class __$$TimelineUiModelImplCopyWithImpl<$Res>
    extends _$TimelineUiModelCopyWithImpl<$Res, _$TimelineUiModelImpl>
    implements _$$TimelineUiModelImplCopyWith<$Res> {
  __$$TimelineUiModelImplCopyWithImpl(
      _$TimelineUiModelImpl _value, $Res Function(_$TimelineUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onClickedPost = null,
  }) {
    return _then(_$TimelineUiModelImpl(
      onClickedPost: null == onClickedPost
          ? _value.onClickedPost
          : onClickedPost // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$TimelineUiModelImpl implements _TimelineUiModel {
  const _$TimelineUiModelImpl({required this.onClickedPost});

  @override
  final void Function() onClickedPost;

  @override
  String toString() {
    return 'TimelineUiModel(onClickedPost: $onClickedPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineUiModelImpl &&
            (identical(other.onClickedPost, onClickedPost) ||
                other.onClickedPost == onClickedPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onClickedPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineUiModelImplCopyWith<_$TimelineUiModelImpl> get copyWith =>
      __$$TimelineUiModelImplCopyWithImpl<_$TimelineUiModelImpl>(
          this, _$identity);
}

abstract class _TimelineUiModel implements TimelineUiModel {
  const factory _TimelineUiModel(
      {required final void Function() onClickedPost}) = _$TimelineUiModelImpl;

  @override
  void Function() get onClickedPost;
  @override
  @JsonKey(ignore: true)
  _$$TimelineUiModelImplCopyWith<_$TimelineUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
