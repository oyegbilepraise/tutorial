import 'package:flutter/material.dart';
import 'package:tutorial/ui/login.dart';

// import './ui/welcome_home.dart';
// import './ui/makeitRain.dart';
// import './ui/login.dart';
import './ui/planet.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Welcome App',
      // home: Welcome(),
      // home: MakeItRain(),
      home: Planet(),
    ),
  );
}
