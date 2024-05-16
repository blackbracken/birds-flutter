import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birds_user.freezed.dart';
part 'birds_user.g.dart';

@freezed
class BirdsUser with _$BirdsUser {
  const factory BirdsUser({
    required String userId,
    required String? userName,
    required String? imageUrl,
    required DateTime createdAt,
    required List<String> followeeIds,
    required List<String> followerIds,
    required List<String> createdPostIds,
    required List<String> likedPostIds,
  }) = _BirdsUser;

  factory BirdsUser.fromJson(Map<String, dynamic> json) =>
      _$BirdsUserFromJson(json);
}
