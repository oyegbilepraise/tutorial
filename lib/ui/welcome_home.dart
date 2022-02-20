import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  void _onPress() {
    print('Pressed');
  }

  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Praise Oye'),
          actions: [
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => debugPrint('Icon Tapped'),
            ),
            IconButton(
              onPressed: _onPress,
              icon: Icon(Icons.search),
            ),
            IconButton(
                onPressed: () => debugPrint('Icon Tapped2'),
                icon: Icon(Icons.list)),
          ],
        ),
        backgroundColor: Colors.lightBlue
        // )
        // return new Container(
        //   color: Colors.green,
        //   alignment: Alignment.center,

        //   child: Stack(
        //     alignment: Alignment.bottomCenter,
        //     children: [
        //       const Text('Hello there'),
        //       const Text('World'),
        //       const Text('1')
        //     ],
        //   ),
        // child: new Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       'Praise',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //     Text(
        //       'Eunice',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //     Text(
        //       'Privilege',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //   ],
        // ),
        // child: new Center(
        //   child: Text(
        //     'Welcome Home!',
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(
        //       fontWeight: FontWeight.w900,
        //       fontStyle: FontStyle.italic,
        //       fontSize: 35,
        //     ),
        //   ),
        // ),
        );
  }
}
