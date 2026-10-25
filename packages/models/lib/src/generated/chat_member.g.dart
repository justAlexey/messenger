// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../chat_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) => _ChatMember(
  chatId: json['chatId'] as String,
  userId: json['userId'] as String,
  lastReadMessageId: json['lastReadMessageId'] as String?,
);

Map<String, dynamic> _$ChatMemberToJson(_ChatMember instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'userId': instance.userId,
      'lastReadMessageId': instance.lastReadMessageId,
    };
