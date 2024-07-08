import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                backgroundColor: Colors.blue,
        title: Text('Welcome Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Attendance App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
