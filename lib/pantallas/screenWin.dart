import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cargar extends StatefulWidget {
  const Cargar({super.key});

  @override
  State<Cargar> createState() => CargarState();
}

class CargarState extends State<Cargar> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //appBar: AppBar(title: Text("Pantalla 2")),
      body: Center(
        child: Text(
          "YOU DID IT",
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
