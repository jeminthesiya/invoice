import 'package:flutter/material.dart';
import 'package:invoice_1/HomeScreen.dart';
import 'package:invoice_1/ShowDialog.dart';
import 'package:invoice_1/data.dart';
import 'package:invoice_1/intro.dart';
import 'package:invoice_1/note.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => intro(),
        'DataEnter': (context) => DataEnter(),
        'note': (context) => note(),
        'data': (context) => data(),
        'ShowDetail': (context) => ShowDetail(),
      },
    ),
  );
}
