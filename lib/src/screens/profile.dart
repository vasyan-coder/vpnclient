import 'package:flutter/material.dart';

import '../user_inherited_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = UserInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Профиль")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Имя: ${userData.name}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Почта: ${userData.email}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Дата регистрации: ${userData.registrationDate}",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}