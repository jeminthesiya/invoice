import 'dart:async';
import 'package:flutter/material.dart';

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'DataEnter');
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/ApkLogoWithDarkText.png",
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
