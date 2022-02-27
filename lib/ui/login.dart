import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _welcomeString = '';

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome() {
    setState(() {
      _userController.text = 'Hello';
      // if (_userController.text.isNotEmpty &&
      //     _passwordController.text.isNotEmpty) {
      //   _welcomeString = _userController.text;
      // } else
      //   _welcomeString = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Make it Rain'),
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
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Image.asset(
              'images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.white,
            ),
            Container(
              height: 180.0,
              width: 390.0,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      icon: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.5),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: ElevatedButton(
                            onPressed: _showWelcome,
                            child: Text('Login'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 168.0),
                          child: ElevatedButton(
                            onPressed: _erase,
                            child: Text('Clear'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Welcome $_welcomeString ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500,
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
