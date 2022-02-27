import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final title = 'Gestures';

  void _onPress() {
    print('Pressed');
  }

  const Welcome({Key? key}) : super(key: key);

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
              onPressed: _onPress,
              icon: Icon(Icons.search),
            ),
            IconButton(
                onPressed: () => debugPrint('Icon Tapped2'),
                icon: Icon(Icons.list)),
          ],
        ),
        body: Center(child: CustomButton())
        //   // backgroundColor: Colors.lightBlue,
        //   body: Container(
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           'Praise',
        //           style: TextStyle(
        //               fontSize: 14.5,
        //               fontWeight: FontWeight.w400,
        //               color: Colors.deepOrange),
        //         ),
        //         InkWell(
        //           child: Text('Button!'),
        //           onTap: () => debugPrint('Button Tapped'),
        //         )
        //       ],
        //     ),
        //   ),

        //   bottomNavigationBar: BottomNavigationBar(
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //       BottomNavigationBarItem(icon: Icon(Icons.print), label: "Nope"),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.call_missed),
        //         label: "Hello",
        //       ),
        //     ],
        //     onTap: (int i) => debugPrint('I Touched $i'),
        //   ),

        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () => debugPrint('Hafa Bro'),
        //     backgroundColor: Colors.lightGreen,
        //     tooltip: 'Going Up!',
        //     child: Icon(Icons.call_missed),
        //   ),

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

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text('Hello Gestures'),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(milliseconds: 4000),
        );

        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5),
        ),
        child: Text('First Button'),
      ),
    );
  }
}
