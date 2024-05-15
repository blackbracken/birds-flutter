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
  List<String> get followeeIds => throw _privateConstructorUsedError;
  List<String> get followerIds => throw _privateConstructorUsedError;
  List<String> get likedPostIds => throw _privateConstructorUsedError;

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
      {String userId,
      String? userName,
      String? imageUrl,
      DateTime createdAt,
      List<String> followeeIds,
      List<String> followerIds,
      List<String> likedPostIds});
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
    Object? followeeIds = null,
    Object? followerIds = null,
    Object? likedPostIds = null,
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
      followeeIds: null == followeeIds
          ? _value.followeeIds
          : followeeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followerIds: null == followerIds
          ? _value.followerIds
          : followerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedPostIds: null == likedPostIds
          ? _value.likedPostIds
          : likedPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String userId,
      String? userName,
      String? imageUrl,
      DateTime createdAt,
      List<String> followeeIds,
      List<String> followerIds,
      List<String> likedPostIds});
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
    Object? followeeIds = null,
    Object? followerIds = null,
    Object? likedPostIds = null,
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
      followeeIds: null == followeeIds
          ? _value._followeeIds
          : followeeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followerIds: null == followerIds
          ? _value._followerIds
          : followerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedPostIds: null == likedPostIds
          ? _value._likedPostIds
          : likedPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      required this.createdAt,
      required final List<String> followeeIds,
      required final List<String> followerIds,
      required final List<String> likedPostIds})
      : _followeeIds = followeeIds,
        _followerIds = followerIds,
        _likedPostIds = likedPostIds;

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
  final List<String> _followeeIds;
  @override
  List<String> get followeeIds {
    if (_followeeIds is EqualUnmodifiableListView) return _followeeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followeeIds);
  }

  final List<String> _followerIds;
  @override
  List<String> get followerIds {
    if (_followerIds is EqualUnmodifiableListView) return _followerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followerIds);
  }

  final List<String> _likedPostIds;
  @override
  List<String> get likedPostIds {
    if (_likedPostIds is EqualUnmodifiableListView) return _likedPostIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedPostIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BirdsUser(userId: $userId, userName: $userName, imageUrl: $imageUrl, createdAt: $createdAt, followeeIds: $followeeIds, followerIds: $followerIds, likedPostIds: $likedPostIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BirdsUser'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('followeeIds', followeeIds))
      ..add(DiagnosticsProperty('followerIds', followerIds))
      ..add(DiagnosticsProperty('likedPostIds', likedPostIds));
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
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._followeeIds, _followeeIds) &&
            const DeepCollectionEquality()
                .equals(other._followerIds, _followerIds) &&
            const DeepCollectionEquality()
                .equals(other._likedPostIds, _likedPostIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      userName,
      imageUrl,
      createdAt,
      const DeepCollectionEquality().hash(_followeeIds),
      const DeepCollectionEquality().hash(_followerIds),
      const DeepCollectionEquality().hash(_likedPostIds));

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
      required final DateTime createdAt,
      required final List<String> followeeIds,
      required final List<String> followerIds,
      required final List<String> likedPostIds}) = _$BirdsUserImpl;

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
  List<String> get followeeIds;
  @override
  List<String> get followerIds;
  @override
  List<String> get likedPostIds;
  @override
  @JsonKey(ignore: true)
  _$$BirdsUserImplCopyWith<_$BirdsUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
