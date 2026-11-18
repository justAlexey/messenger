import 'package:auth/auth.dart';
import 'package:models/models.dart';
import 'package:test/test.dart';
import 'package:database/database.dart';

void main() {
  group('A group of tests', () {
    final database = ServerDatabase.memory();
    final userRepository = UserRepository(db: database);
    final userRecordRepository = UserRecordRepository(db: database);
    final auth = Auth(
      userRepository: userRepository,
      userRecordRepository: userRecordRepository,
    );

    setUp(() async {
      final user = await userRepository.createUser(
        User.create(userName: "alexey"),
      );
      await userRecordRepository.createUserRecord(user.uuid, "password");
    });

    tearDown(() async {
      await database.managers.users.delete();
      await database.managers.userRecords.delete();
    });
    test('correct login and password', () async {
      expect(await auth.login("alexey", "password"), isTrue);
    });
    test("incorrect login", () async {
      expect(await auth.login("demo", "password"), isFalse);
    });
    test("incorrect password", () async {
      expect(await auth.login("alexey", "password2"), isFalse);
    });
  });
}
