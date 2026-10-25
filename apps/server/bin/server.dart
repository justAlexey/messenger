import 'package:models/models.dart';

void main(List<String> arguments) async {
  final user = User.create(firstName: "firstName");

  print(user);
}
