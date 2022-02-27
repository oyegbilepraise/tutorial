import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  const MakeItRain({Key? key}) : super(key: key);

  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 2000;

  void _rainMoney() {
    setState(() {
      _moneyCounter += 1000;
    });
  }

  void _debitMoney() {
    setState(() {
      _moneyCounter -= 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Make it Rain'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => debugPrint('Icon Tapped'),
          ),
          IconButton(
            onPressed: () => debugPrint('Icon Tapped'),
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => debugPrint('Icon Tapped2'),
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'Get RIch Praise',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                    // ($_moneyCounter > 5000 ? color: Colors.grey :),
                    color:
                        _moneyCounter > 5000 ? Colors.greenAccent : Colors.grey,
                    fontSize: 47,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: _rainMoney,
                  child: Text(
                    'Let it Rain!',
                    style: TextStyle(fontSize: 19.9),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: _debitMoney,
                  child: Text(
                    'Debit Alert!',
                    style: TextStyle(fontSize: 19.9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.print), label: "Nope"),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_missed),
            label: "Hello",
          ),
        ],
        onTap: (int i) => debugPrint('I Touched $i'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Hafa Bro'),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up!',
        child: Icon(Icons.call_missed),
      ),
    );
  }
}
