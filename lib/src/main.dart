import 'package:flutter/material.dart';
import 'package:vpnclient/src/screens/config.dart';
import 'package:vpnclient/src/screens/login.dart';
import 'package:vpnclient/src/screens/mainscreen.dart';
import 'package:vpnclient/src/screens/profile.dart';
import 'package:vpnclient/src/screens/registration.dart';
import 'package:vpnclient/src/user_inherited_widget.dart';
import 'package:vpnclient/src/user_service.dart';

void main() {
  setup();
  runApp(const UserInheritedWidget(
    name: "Иван Иванов",
    email: "example@example.com",
    registrationDate: "27.09.2024",
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPN Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/main': (context) =>  const MainScreen(),
        '/config': (context) => ConfigListScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
