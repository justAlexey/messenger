import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/chat_member.freezed.dart';
part 'generated/chat_member.g.dart';

@freezed
abstract class ChatMember with _$ChatMember {
  factory ChatMember({
    required String chatId,
    required String userId,
    String? lastReadMessageId,
  }) = _ChatMember;

  factory ChatMember.fromJson(Map<String, Object?> json) =>
      _$ChatMemberFromJson(json);
}
