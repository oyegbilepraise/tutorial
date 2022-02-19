import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Praise',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'Eunice',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'Privilege',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
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
