library;

import "dart:convert";

import "package:drift/drift.dart";
import 'package:models/models.dart';

class MapToJsonConverter extends TypeConverter<Map<String, Object?>, String> {
  const MapToJsonConverter();
  @override
  Map<String, Object?> fromSql(String fromDb) => jsonDecode(fromDb);
  @override
  String toSql(Map<String, Object?> value) => jsonEncode(value);
}

@UseRowClass(Message)
class Messages extends Table {
  TextColumn get uuid => text()();
  TextColumn get senderId => text().references(Users, #uuid)();
  TextColumn get chatId =>
      text().references(Chats, #uuid, onDelete: KeyAction.cascade)();
  TextColumn get content => text().map(const MapToJsonConverter())();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {uuid};
}

@UseRowClass(User)
class Users extends Table {
  TextColumn get uuid => text()();
  TextColumn get userName => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get displayName => text().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}

@UseRowClass(ChatMember)
class ChatMembers extends Table {
  TextColumn get chatId => text().references(Chats, #uuid)();
  TextColumn get userId => text().references(Users, #uuid)();
  TextColumn get lastReadMessageId =>
      text().nullable().references(Messages, #uuid)();

  @override
  Set<Column> get primaryKey => {chatId, userId};
}

@UseRowClass(Chat)
class Chats extends Table {
  TextColumn get uuid => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get title => text().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}
