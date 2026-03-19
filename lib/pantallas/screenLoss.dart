import 'dart:async';
import 'package:flutter/material.dart';

class Loss extends StatefulWidget {
  const Loss({super.key});

  @override
  State<Loss> createState() => LossState();
}

class LossState extends State<Loss> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      //appBar: AppBar(title: Text("Pantalla 3")),
      body: Center(
        child: Text(
          "You Loss",
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
