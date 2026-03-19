//Estoy Pensando como hacerlo
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:practica/globalVariable.dart';
import 'package:csv/csv.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<List<dynamic>> rows = [];
  @override
  void initState() {
    super.initState();
    getCSVFile();
  }

  // Verifica si el Archivo Exite
  Future<File> getCSVFile() async {
    if (await fileCsv.exists()) {
      return fileCsv;
    }

    final raw = await rootBundle.loadString('assets/questionData.csv');
    await fileCsv.writeAsString(raw);
    return fileCsv;
  }

  Future<void> save() async {
    final csvString = CsvEncoder().convert(rows);
    await fileCsv.writeAsString(csvString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Setting")),
      body: Column(children: [Text("On Working")]),
    );
  }
}
