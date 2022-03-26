import 'package:flutter/material.dart';
// import 'package:tutorial/ui/https.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:tutorial/ui/bmi.dart';
// import 'package:tutorial/ui/login.dart';
// import './ui/welcome_home.dart';
// import './ui/makeitRain.dart';
// import './ui/login.dart';
// import './ui/planet.dart';
// import './ui/bmi.dart';

void main() {
  // List _data = await getJSON();

  // print(_data);

  runApp(
    MaterialApp(
      title: 'Welcome App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('JSON Parse'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
          child: Text('JSON Parse'),
        ),
      ),
      // home: Welcome(),
      // home: MakeItRain(),
      // home: Planet(),
      // home: BmiApp()
      // home: Https(),
    ),
  );
}

// Future<List> getJSON() async {
//   // String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

//   http.Response response =
//       await http.get(Uri.http('https://jsonplaceholder.typicode.com', 'posts'));

//   // return json.decode(response.body);

//   return jsonDecode(response.body);
// }
