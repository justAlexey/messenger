// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  uuid: json['uuid'] as String,
  userName: json['userName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  displayName: json['displayName'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'uuid': instance.uuid,
  'userName': instance.userName,
  'createdAt': instance.createdAt.toIso8601String(),
  'displayName': instance.displayName,
};
