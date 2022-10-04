import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
    // name of the route defined in the host app
    case 'splashRoute':
      return const MyFlutterActivity();

    default:
      return const Center(
        child: Text('Unknown'),
      );
  }
}

class MyFlutterActivity extends StatelessWidget {
  const MyFlutterActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Court Counter',
            style: TextStyle(
              color: Colors.orange[800],
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/images/basketball.jpg'),
        ],
      ),
    );
  }
}
