import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//implementing student home page
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
        color: Colors.white,

        child: Column(
          children: [

            Container(
              height: 70,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  //SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/image.jpg'),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text('Hi,',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green),),

                      Text('Alino',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),),

                    ],
                  ),
                  Expanded(child: SizedBox(),),
                  Expanded(child: SizedBox(),),
                  Expanded(child: SizedBox(),),
                  Expanded(
                    child: Image.asset('assets/notification.png', ),
                  ),

                  Image.asset('assets/menu_green.png', height: 25,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Welcome to your Attendance App',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ALAIN NKEH MBUNKUR',
                    style: TextStyle(
                        color: Colors.blue,fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  Text('FE21A133',style: TextStyle(
                      color: Colors.blue, fontSize: 15,
                      fontWeight: FontWeight.bold),),
                  Text('B.ENG COMPUTER ENGINEERING',style: TextStyle(
                      color: Colors.blue, fontSize: 15,
                      fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text('2023/2024'),
                      SizedBox(width: 30),
                      Text('Second Semester'),
                    ],
                  )
                ],
              ),
            ),
            Expanded(child: SizedBox(),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/course');
                            },
                            child:
                            Container(
                              height: 130,
                              width: 130,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              decoration: BoxDecoration(
                                color: Color(0x5FD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(

                                children: [
                                  Center(

                                    child: Image.asset(
                                      'assets/course.png',
                                      height: 70,
                                      width: 70,
                                      //fit: BoxFit.cover,
                                    ),
                                  ),
                                  //const SizedBox(height: 10),
                                  Expanded(child: Text(
                                    'Courses',
                                    style: TextStyle(fontSize: 14, color: Colors.blue),
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/attendanceRecords');
                            },
                            child:Container(
                              height: 130,
                              width: 130,
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0x5FD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Center(

                                    child: Image.asset(
                                      'assets/attendance2.png',
                                      height: 90,
                                      width: 75,
                                      //fit: BoxFit.cover,
                                    ),
                                  ),
                                  //const SizedBox(height: 10),
                                  Expanded(child:  Text(
                                    'Attendance',
                                    style: TextStyle(fontSize: 14, color: Colors.blue),
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(height: 40,),
                    Container(
                      child: Row(
                        children: [
                          //SizedBox(width: 50,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/studentProfile');
                            },
                            child: Container(
                              height: 130,
                              width: 130,
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0x5FD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Center(

                                    child: Image.asset(
                                      'assets/profile_blue.png',
                                      height: 90,
                                      width: 90,
                                      //fit: BoxFit.cover,
                                    ),
                                  ),
                                  //const SizedBox(height: 10),
                                  Expanded(child: Text(
                                    'Profile',
                                    style: TextStyle(fontSize: 14, color: Colors.blue),
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/BiometricAuthScreen');
                            },
                            child: Container(
                              height: 130,
                              width: 130,
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0x5FD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Center(

                                    child: Image.asset(
                                      'assets/record_attendance.png',
                                      height: 70,
                                      width: 70,
                                      //fit: BoxFit.cover,
                                    ),
                                  ),
                                  //const SizedBox(height: 10),
                                  Expanded(child: Text(
                                    'Record',
                                    style: TextStyle(fontSize: 14, color: Colors.blue),
                                  ),),
                                  Expanded(child: Text(
                                    'Attendance',
                                    style: TextStyle(fontSize: 14, color: Colors.blue),
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    //SizedBox(width: 20,),

                  ],
                ),
              ),
            ),
            Expanded(child: const SizedBox(),),

               ],
        ),
      ),
    );
  }
}