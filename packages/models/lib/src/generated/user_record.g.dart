// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRecord _$UserRecordFromJson(Map<String, dynamic> json) => _UserRecord(
  userId: json['userId'] as String,
  passwordHash: json['passwordHash'] as String,
);

Map<String, dynamic> _$UserRecordToJson(_UserRecord instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'passwordHash': instance.passwordHash,
    };
