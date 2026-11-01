// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../database.dart';

// ignore_for_file: type=lint
class $UserRecordsTable extends UserRecords
    with TableInfo<$UserRecordsTable, UserRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordHashMeta = const VerificationMeta(
    'passwordHash',
  );
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
    'password_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [userId, passwordHash];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('password_hash')) {
      context.handle(
        _passwordHashMeta,
        passwordHash.isAcceptableOrUnknown(
          data['password_hash']!,
          _passwordHashMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passwordHashMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserRecord(
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      passwordHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_hash'],
      )!,
    );
  }

  @override
  $UserRecordsTable createAlias(String alias) {
    return $UserRecordsTable(attachedDatabase, alias);
  }
}

class UserRecordsCompanion extends UpdateCompanion<UserRecord> {
  final Value<String> userId;
  final Value<String> passwordHash;
  final Value<int> rowid;
  const UserRecordsCompanion({
    this.userId = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserRecordsCompanion.insert({
    required String userId,
    required String passwordHash,
    this.rowid = const Value.absent(),
  }) : userId = Value(userId),
       passwordHash = Value(passwordHash);
  static Insertable<UserRecord> custom({
    Expression<String>? userId,
    Expression<String>? passwordHash,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserRecordsCompanion copyWith({
    Value<String>? userId,
    Value<String>? passwordHash,
    Value<int>? rowid,
  }) {
    return UserRecordsCompanion(
      userId: userId ?? this.userId,
      passwordHash: passwordHash ?? this.passwordHash,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserRecordsCompanion(')
          ..write('userId: $userId, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ServerDatabase extends GeneratedDatabase {
  _$ServerDatabase(QueryExecutor e) : super(e);
  $ServerDatabaseManager get managers => $ServerDatabaseManager(this);
  late final $UserRecordsTable userRecords = $UserRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userRecords];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$UserRecordsTableCreateCompanionBuilder =
    UserRecordsCompanion Function({
      required String userId,
      required String passwordHash,
      Value<int> rowid,
    });
typedef $$UserRecordsTableUpdateCompanionBuilder =
    UserRecordsCompanion Function({
      Value<String> userId,
      Value<String> passwordHash,
      Value<int> rowid,
    });

class $$UserRecordsTableFilterComposer
    extends Composer<_$ServerDatabase, $UserRecordsTable> {
  $$UserRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserRecordsTableOrderingComposer
    extends Composer<_$ServerDatabase, $UserRecordsTable> {
  $$UserRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserRecordsTableAnnotationComposer
    extends Composer<_$ServerDatabase, $UserRecordsTable> {
  $$UserRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => column,
  );
}

class $$UserRecordsTableTableManager
    extends
        RootTableManager<
          _$ServerDatabase,
          $UserRecordsTable,
          UserRecord,
          $$UserRecordsTableFilterComposer,
          $$UserRecordsTableOrderingComposer,
          $$UserRecordsTableAnnotationComposer,
          $$UserRecordsTableCreateCompanionBuilder,
          $$UserRecordsTableUpdateCompanionBuilder,
          (
            UserRecord,
            BaseReferences<_$ServerDatabase, $UserRecordsTable, UserRecord>,
          ),
          UserRecord,
          PrefetchHooks Function()
        > {
  $$UserRecordsTableTableManager(_$ServerDatabase db, $UserRecordsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> userId = const Value.absent(),
                Value<String> passwordHash = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserRecordsCompanion(
                userId: userId,
                passwordHash: passwordHash,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userId,
                required String passwordHash,
                Value<int> rowid = const Value.absent(),
              }) => UserRecordsCompanion.insert(
                userId: userId,
                passwordHash: passwordHash,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserRecordsTable, UserRecord>(table),
                  BaseReferences<
                    _$ServerDatabase,
                    $UserRecordsTable,
                    UserRecord
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$ServerDatabase,
      $UserRecordsTable,
      UserRecord,
      $$UserRecordsTableFilterComposer,
      $$UserRecordsTableOrderingComposer,
      $$UserRecordsTableAnnotationComposer,
      $$UserRecordsTableCreateCompanionBuilder,
      $$UserRecordsTableUpdateCompanionBuilder,
      (
        UserRecord,
        BaseReferences<_$ServerDatabase, $UserRecordsTable, UserRecord>,
      ),
      UserRecord,
      PrefetchHooks Function()
    >;

class $ServerDatabaseManager {
  final _$ServerDatabase _db;
  $ServerDatabaseManager(this._db);
  $$UserRecordsTableTableManager get userRecords =>
      $$UserRecordsTableTableManager(_db, _db.userRecords);
}
