import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// class Https extends StatelessWidget {
//   const Https({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('JSON Parse'),
//         centerTitle: true,
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Center(
//         child: Text('Parsing...'),
//       ),
//     );
//   }
// }

class Https extends StatelessWidget {
  const Https({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Parse'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Text('Parsing...'),
      ),
    );
  }
}

Future<String> getJSON() async {
  // String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response =
      await http.get(Uri.http('https://jsonplaceholder.typicode.com', 'posts'));

  return json.decode(response.body);
}
