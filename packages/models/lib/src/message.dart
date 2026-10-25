import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'generated/message.freezed.dart';
part 'generated/message.g.dart';

@freezed
abstract class Message with _$Message {
  factory Message({
    required String uuid,
    required String senderId,
    required String chatId,
    required Map<String, Object?> content,
    required DateTime createdAt,
  }) = _Message;
  factory Message.create({
    required String senderId,
    required String chatId,
    required Map<String, Object?> content,
  }) {
    return Message(
      uuid: const Uuid().v7(),
      senderId: senderId,
      chatId: chatId,
      content: content,
      createdAt: DateTime.now().toUtc(),
    );
  }
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
