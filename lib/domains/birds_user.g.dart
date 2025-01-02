// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birds_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdsUserImpl _$$BirdsUserImplFromJson(Map<String, dynamic> json) =>
    _$BirdsUserImpl(
      userId: json['userId'] as String,
      userName: json['userName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BirdsUserImplToJson(_$BirdsUserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };
