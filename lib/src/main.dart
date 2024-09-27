import 'package:flutter/material.dart';
import 'package:vpnclient/src/screens/config.dart';
import 'package:vpnclient/src/screens/login.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}
