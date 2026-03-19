import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:practica/pantallas/startScreen.dart';
import 'globalVariable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  dirCsv = await getApplicationDocumentsDirectory();
  fileCsv = File("${dirCsv.path}/questionData_editable.csv");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: startScreen());
  }
}
