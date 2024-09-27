import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name = "Иван Иванов";
  final String email = "example";
  final String registrationDate = "27.09.2024";

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Профиль")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Имя: $name",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Почта: $email",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Дата регистрации: $registrationDate",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}