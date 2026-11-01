// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  uuid: json['uuid'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  title: json['title'] as String?,
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'uuid': instance.uuid,
  'createdAt': instance.createdAt.toIso8601String(),
  'title': instance.title,
};
