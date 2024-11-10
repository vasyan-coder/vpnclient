import 'package:get_it/get_it.dart';

class UserService {
  String name = "Иван Иванов";
  String email = "example@example.com";
  String registrationDate = "27.09.2024";
}

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<UserService>(UserService());
}
