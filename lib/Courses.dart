import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget{
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context){
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
               decoration: BoxDecoration(color: Colors.blue),),
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 0),
               height: 65,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.blue,
               ),
               child: Row(
                 children: [
                   //SizedBox(width: 10,),
                   GestureDetector(
                     onTap: (){
         
                       Navigator.pop(context);
                     },
                     child: Image.asset('assets/back_white.png', width: 30,),
                   ),
                   SizedBox(width: 20,),
                   Text('COURSES',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 15,
         
                     ),),
                   Expanded(child: SizedBox()),
                   Expanded(child: Column(
                     children: [
                       GestureDetector(
                         onTap: (){
                           Navigator.pushNamed(context, '/add_courses');
                         },
                         child: Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.white,
                           ),
                           child: Image.asset('assets/add_green.png'),
                         ),
                       ),
                       Text('Add Course', style: TextStyle(color: Colors.white),),
                     ],
                   ),
                   ),
         
         
                 ],
               ),
             ),
             SizedBox(height: 5,),
             Text('COURSES ENROLLED IN',style: TextStyle(color: Colors.blue, ),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
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
                       Text('Course Code:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('Course Title:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('Credit Value:',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('Course Status:',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                   SizedBox(width: 5,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('CEF412',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                         ),),
                       Text('XML AND DOC\' CONTENT',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                       Text('3',style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,),),
                       Text('C',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,),),
                     ],
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
     ),

    );
  }
}