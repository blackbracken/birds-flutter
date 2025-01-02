// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birds_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdsUser _$BirdsUserFromJson(Map<String, dynamic> json) {
  return _BirdsUser.fromJson(json);
}

/// @nodoc
mixin _$BirdsUser {
  String get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirdsUserCopyWith<BirdsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdsUserCopyWith<$Res> {
  factory $BirdsUserCopyWith(BirdsUser value, $Res Function(BirdsUser) then) =
      _$BirdsUserCopyWithImpl<$Res, BirdsUser>;
  @useResult
  $Res call(
      {String userId, String? userName, String? imageUrl, DateTime createdAt});
}

/// @nodoc
class _$BirdsUserCopyWithImpl<$Res, $Val extends BirdsUser>
    implements $BirdsUserCopyWith<$Res> {
  _$BirdsUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdsUserImplCopyWith<$Res>
    implements $BirdsUserCopyWith<$Res> {
  factory _$$BirdsUserImplCopyWith(
          _$BirdsUserImpl value, $Res Function(_$BirdsUserImpl) then) =
      __$$BirdsUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String? userName, String? imageUrl, DateTime createdAt});
}

/// @nodoc
class __$$BirdsUserImplCopyWithImpl<$Res>
    extends _$BirdsUserCopyWithImpl<$Res, _$BirdsUserImpl>
    implements _$$BirdsUserImplCopyWith<$Res> {
  __$$BirdsUserImplCopyWithImpl(
      _$BirdsUserImpl _value, $Res Function(_$BirdsUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$BirdsUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdsUserImpl with DiagnosticableTreeMixin implements _BirdsUser {
  const _$BirdsUserImpl(
      {required this.userId,
      required this.userName,
      required this.imageUrl,
      required this.createdAt});

  factory _$BirdsUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdsUserImplFromJson(json);

  @override
  final String userId;
  @override
  final String? userName;
  @override
  final String? imageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BirdsUser(userId: $userId, userName: $userName, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BirdsUser'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdsUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userName, imageUrl, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdsUserImplCopyWith<_$BirdsUserImpl> get copyWith =>
      __$$BirdsUserImplCopyWithImpl<_$BirdsUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdsUserImplToJson(
      this,
    );
  }
}

abstract class _BirdsUser implements BirdsUser {
  const factory _BirdsUser(
      {required final String userId,
      required final String? userName,
      required final String? imageUrl,
      required final DateTime createdAt}) = _$BirdsUserImpl;

  factory _BirdsUser.fromJson(Map<String, dynamic> json) =
      _$BirdsUserImpl.fromJson;

  @override
  String get userId;
  @override
  String? get userName;
  @override
  String? get imageUrl;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BirdsUserImplCopyWith<_$BirdsUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
