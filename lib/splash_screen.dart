import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/role');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const
            Color(0xFF1692D7),
            Color(0xFFCF1F0),
            Color(0xFF51B29B)], // Define the gradient colors
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, //
            children: [
              const SizedBox(height: 150),
              Image.asset('assets/logo.png', height: 190, width: 190,),
              const Text(
                'Attendance App',
                style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold ),
              ),
              const SizedBox(height: 200),
              const Text('.....',
                  style: TextStyle(fontSize: 70, color: Colors.green, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      );
  }
}
