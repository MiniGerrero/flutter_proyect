// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';
import 'dart:math';
import 'screenWin.dart';
import 'screenLoss.dart';

class Pantallas extends StatefulWidget {
  const Pantallas({super.key});

  @override
  State<Pantallas> createState() => StatePantallas();
}

class StatePantallas extends State<Pantallas> {
  // Variables
  StreamSubscription<GyroscopeEvent>? _gyroscopeSub;
  bool headMove = false;
  List<String> animal = ["Leon", "Gato", "Perro"];
  String? result;

  //Funcion de Selecion aleatoria
  String chooseAnimal() {
    var random = Random();
    String animalSelect = animal[random.nextInt(animal.length)];

    return result = animalSelect;
  }

  //Funciones generales se incia apenas se habre el witghed
  @override
  void initState() {
    super.initState();

    if (result == null) {
      chooseAnimal();
    }

    // Escuchar el giroscopio
    _gyroscopeSub = gyroscopeEventStream().listen((event) {
      setState(() {
        if (!headMove && event.x < -1.5) {
          headMove = true;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Cargar()),
          ).then((_) {
            setState(() {
              headMove = false;
              chooseAnimal();
            });
          });
        } else if (!headMove && event.x > 1.5) {
          headMove = true;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Loss()),
          ).then((_) {
            setState(() {
              headMove = false;
              chooseAnimal();
            });
          });
        }
      });
    });
  }

  @override
  void dispose() {
    // Cancelar la suscripción
    _gyroscopeSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text("Testing Giroscopio, ")),
      body: Center(
        child: Text(
          "Animal: $result",
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
