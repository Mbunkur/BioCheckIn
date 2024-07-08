import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x5FD9D9D9),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    //SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back_white.png',
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'ATTENDANCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              //SizedBox(width: 100,),
              Text('YOUR ATTENDANCE TRACKING HISTORY PER INDIVIDUAL COURSE',
              style:
              TextStyle(
                color: Colors.blue,
              fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
             Column(
               children: [
                 GestureDetector(
                 onTap: (){
                   Navigator.pushNamed(context, '/ViewAttendanceDetails');
                 },
                 child: Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
               ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),

                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(5),
                   height: 110,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white,
                   ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('CEF213',
                             style: TextStyle(
                                 color: Colors.blue, fontSize: 25),),
                           Row(
                             children: [
                               Text('15-10-2023 ',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                               Text('to ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('06-08-2024',
                                 style: TextStyle(color: Colors.black, fontSize: 15),),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Incharge - ',
                                 style: TextStyle(color: Color(0xFFA6A2A2)),),
                               Text('DR. SOP LIONEL',
                                 style: TextStyle(color: Colors.black, fontSize: 17),),
                             ],
                           ),
                         ],
                       ),
                       Expanded(child: SizedBox()),
                       Column(
                         children: [
                           Image.asset('assets/attendance2.png', height: 60,),
                           Text('Attendance',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                           Text('Info',
                             style: TextStyle(color: Color(0xFFA6A2A2)),),
                         ],
                       ),
                     ],
                   ),

                 ),
               ],
             ),

              ],
              ),
        ),
      ),
    );
  }
}
