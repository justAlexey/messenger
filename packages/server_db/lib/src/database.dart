import "dart:io";

import "package:drift/drift.dart";
import "package:drift/native.dart";
import "package:models/server_models.dart";
import "package:db_tables/db_tables.dart";

part "generated/database.g.dart";

@UseRowClass(UserRecord)
class UserRecords extends Table {
  TextColumn get userId =>
      text().references(Users, #uuid, onDelete: KeyAction.cascade)();
  TextColumn get passwordHash => text()();

  @override
  Set<Column> get primaryKey => {userId};
}

@DriftDatabase(tables: [Users, Chats, ChatMembers, Messages, UserRecords])
class ServerDatabase extends _$ServerDatabase {
  ServerDatabase(super.executor);

  factory ServerDatabase.memory() => ServerDatabase(NativeDatabase.memory());
  factory ServerDatabase.file(String path) =>
      ServerDatabase(NativeDatabase.createInBackground(File(path)));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy();
}
