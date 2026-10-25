// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  uuid: json['uuid'] as String,
  senderId: json['senderId'] as String,
  chatId: json['chatId'] as String,
  content: json['content'] as Map<String, dynamic>,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'uuid': instance.uuid,
  'senderId': instance.senderId,
  'chatId': instance.chatId,
  'content': instance.content,
  'createdAt': instance.createdAt.toIso8601String(),
};
