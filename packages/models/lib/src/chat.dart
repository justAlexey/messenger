import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/chat.freezed.dart';
part 'generated/chat.g.dart';

@freezed
abstract class Chat with _$Chat {
  factory Chat({
    required String uuid,
    required DateTime createdAt,
    String? title,
  }) = _Chat;
  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
