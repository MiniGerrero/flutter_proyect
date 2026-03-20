import 'package:flutter/material.dart';
import 'package:practica/pantallas/questionSection.dart';
import 'package:practica/pantallas/settingSystem.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TEstint")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome to HeadGame Beta", textAlign: TextAlign.center),

            SizedBox(height: 20),

            SizedBox(
              width: 220,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Pantallas()),
                  );
                },
                child: Text("Start"),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              width: 220,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Setting()),
                  );
                },
                child: Text("Setting"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
