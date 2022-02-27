import 'package:flutter/material.dart';

class Planet extends StatefulWidget {
  const Planet({Key? key}) : super(key: key);

  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Weight on the planet'),
        // centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => debugPrint('Icon Tapped'),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => debugPrint('Icon Tapped2'),
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(2.5),
          children: [
            Image.asset(
              'images/planet.png',
              height: 133.0,
              width: 200.0,
            ),
            Container(
              margin: EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Your Weight on Earth',
                      hintText: 'In Pounds',
                      icon: Icon(Icons.person_outline),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
