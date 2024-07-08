import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DropDown1 extends StatefulWidget {
  @override
  _DropDown1State createState() => _DropDown1State();
}

class _DropDown1State extends State<DropDown1> {
  String? _selectedLevel;
  final List<String> _levels = ['Level 200', 'Level 300', 'Level 400', 'Level 500'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedLevel,
      hint: Padding(
        padding: const EdgeInsets.only(right: 200.0),  // Adjust the padding value as needed
        child: Text('Select Level'),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedLevel = newValue;
        });
      },
      items: _levels.map((String level) {
        return DropdownMenuItem<String>(
          value: level,
          child: Text(level),
        );
      }).toList(),
    );
  }
}

class DropDown2 extends StatefulWidget {
  @override
  _DropDown2State createState() => _DropDown2State();
}

class _DropDown2State extends State<DropDown2> {
  String? _selectedSemester;
  final List<String> _semesters = ['First Semester', 'Second Semester'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedSemester,
      hint: Padding(
        padding: const EdgeInsets.only(right: 170.0),  // Adjust the padding value as needed
        child: Text('Select Semester'),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedSemester = newValue;
        });
      },
      items: _semesters.map((String semester) {
        return DropdownMenuItem<String>(
          value: semester,
          child: Text(semester),
        );
      }).toList(),
    );
  }
}


class AddCourseScreen extends StatelessWidget {
  const AddCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x5FD9D9D9),
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.blue,
              ),

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
                    'ADD COURSE',
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
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Select Level',style: TextStyle(color: Color(0xFFA6A2A2)),),
                 DropDown1(),
                 Text('Select Semester',style: TextStyle(color: Color(0xFFA6A2A2)),),
                 DropDown2(),
               ],
             ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course Code:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Title:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Credit Value:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Status:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CEF412',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'XML AND DOCUMENT CONTENT VALIDATION',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'C',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFF7ED957),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'ADD',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course Code:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Title:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Credit Value:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Status:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CEF412',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'XML AND DOCUMENT CONTENT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,

                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'C',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFF7ED957),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'ADD',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course Code:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Title:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Credit Value:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Course Status:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CEF412',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'XML AND DOCUMENT CONTENT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'C',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xFF7ED957),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'ADD',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
