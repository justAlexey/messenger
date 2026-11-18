import 'package:database/database.dart';
import 'package:models/server_models.dart';

class Auth {
  final UserRepository _userRepository;
  final UserRecordRepository _userRecordRepository;
  Auth({required this._userRepository, required this._userRecordRepository});

  Future<bool> login(String login, String password) async {
    User? user = await _userRepository.getUserByLogin(login);
    if (user == null) return false;
    UserRecord? userRecord = await _userRecordRepository.getUserRecordById(
      user.uuid,
    );
    if (userRecord == null) return false;
    return password == userRecord.passwordHash;
  }
}
