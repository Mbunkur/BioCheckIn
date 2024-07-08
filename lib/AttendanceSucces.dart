import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget{
  const SuccessScreen ({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image.jpg'),
                  radius: 50,
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x5FD9D9D9),
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}