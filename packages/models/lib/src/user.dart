import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    required String uuid,
    required String userName,
    required DateTime createdAt,
    String? displayName,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
