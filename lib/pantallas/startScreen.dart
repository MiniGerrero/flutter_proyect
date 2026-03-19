import 'package:flutter/material.dart';
import 'package:practica/pantallas/questionSection.dart';
import 'package:practica/pantallas/settingSystem.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TEstint")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome to HeadGame Beta"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Pantallas()),
              );
            },
            child: Text("Start"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Setting()),
              );
            },
            child: Text("Setting"),
          ),
        ],
      ),
    );
  }
}
