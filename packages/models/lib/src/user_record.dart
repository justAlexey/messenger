// lib/src/server/user_record.dart
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'generated/user_record.freezed.dart'; // без .g.dart: toJson не генерируется

@freezed
abstract class UserRecord with _$UserRecord {
  const UserRecord._();

  const factory UserRecord({required User user, required String passwordHash}) =
      _UserRecord;

  factory UserRecord.fromRow(Map<String, Object?> row) => UserRecord(
    user: User.fromJson(row),
    passwordHash: row['password_hash']! as String,
  );

  User toPublic() => user;
}
