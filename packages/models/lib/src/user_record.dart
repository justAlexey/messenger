// lib/src/server/user_record.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_record.freezed.dart'; // без .g.dart: toJson не генерируется
part 'generated/user_record.g.dart';

@freezed
abstract class UserRecord with _$UserRecord {
  factory UserRecord({required String userId, required String passwordHash}) =
      _UserRecord;
  factory UserRecord.fromJson(Map<String, Object?> json) =>
      _$UserRecordFromJson(json);
}
