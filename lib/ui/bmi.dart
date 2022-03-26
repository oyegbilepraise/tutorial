import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double _result = 0.0;
  double inches = 0.0;
  String _resultReadings = "";
  String _finalResult = "";

  void _calculate() {
    setState(() {
      int age = int.parse(_ageController.text);
      double height = double.parse(_heightController.text);
      inches = height * 12;
      double weight = double.parse(_weightController.text);

      if ((_ageController.text.isNotEmpty || age > 0) &&
          (_heightController.text.isNotEmpty || inches > 0) &&
          (_weightController.text.isNotEmpty || weight > 0)) {
        _result = weight / (inches * inches) * 703;

        if (double.parse(_result.toStringAsFixed(1)) < 18.5) {
          _resultReadings = 'Underweight';
        } else if (double.parse(_result.toStringAsFixed(1)) >= 18.5 &&
            _result < 25) {
          _resultReadings = 'Great Shape';
        } else if (double.parse(_result.toStringAsFixed(1)) >= 25.0 &&
            _result < 30) {
          _resultReadings = 'Overweight';
        } else if (double.parse(_result.toStringAsFixed(1)) >= 30.0) {
          _resultReadings = 'Obese';
        }
      } else {
        _result = 0.0;
      }
    });

    _finalResult = 'Your BMI: ${_result.toStringAsFixed(1)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('BMI'),
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
              height: 250.0,
              width: 390.0,
              color: Colors.grey[400],
              margin: EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  TextField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Age',
                      hintText: 'e.g 34',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Height in weight',
                      hintText: 'e.g 6.7',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Weight in lib',
                      hintText: 'e.g 180',
                      icon: Icon(Icons.person),
                    ),
                  ),

                  Container(
                    child: ElevatedButton(
                      onPressed: _calculate,
                      child: Text('Calculate'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  // Padding(padding: EdgeInsets.all(15.0)),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI: $_finalResult ',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontSize: 19.9,
                  ),
                ),
                Text(
                  '$_resultReadings',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontSize: 19.9,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
