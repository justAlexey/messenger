// test/test_database.dart
import 'package:db_tables/db_tables.dart';
import 'package:drift/drift.dart';
import 'package:models/models.dart';

part 'test_database.g.dart';

@DriftDatabase(tables: [Users, Chats, ChatMembers, Messages])
class TestDatabase extends _$TestDatabase {
  TestDatabase(super.executor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    beforeOpen: (_) => customStatement('PRAGMA foreign_keys = ON'),
  );
}
