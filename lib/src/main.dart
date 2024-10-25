import 'package:flutter/material.dart';
import 'package:vpnclient/src/screens/config.dart';
import 'package:vpnclient/src/screens/login.dart';
import 'package:vpnclient/src/screens/mainscreen.dart';
import 'package:vpnclient/src/screens/profile.dart';
import 'package:vpnclient/src/screens/registration.dart';
import 'package:vpnclient/src/screens/vpnmain.dart';

void main() {
  runApp(const MyApp());
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
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }}
