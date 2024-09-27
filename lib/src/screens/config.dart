import 'package:flutter/material.dart';

class ConfigListScreen extends StatelessWidget {
  final List<String> configs = ["Config 1", "Config 2", "Config 3"];

  ConfigListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Список конфигов")),
      body: ListView.builder(
        itemCount: configs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(configs[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Вы выбрали ${configs[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
