import 'package:flutter/material.dart';

class Planet extends StatefulWidget {
  const Planet({Key? key}) : super(key: key);

  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet> {
  final TextEditingController _weightController = new TextEditingController();

  int radioValue = 0;
  double _finalResult = 0.0;

  void handleRadioValueChange(value) {
    setState(() {
      radioValue = value;

      switch (radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          break;

        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          break;

        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
      }
    });
  }

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
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Your Weight on Earth',
                      hintText: 'In Pounds',
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        activeColor: Colors.brown,
                        value: 0,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        'Pluto',
                        style: TextStyle(color: Colors.black),
                      ),
                      Radio(
                        activeColor: Colors.red,
                        value: 1,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        'Mars',
                        style: TextStyle(color: Colors.black),
                      ),
                      Radio(
                        activeColor: Colors.orangeAccent,
                        value: 2,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange,
                      ),
                      Text(
                        'Venus',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(15.0)),
                  Text(
                    '$_finalResult',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w500,
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

  double calculateWeight(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong");
      return int.parse('180') * 0.38;
    }
  }
}
