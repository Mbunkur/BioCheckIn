import 'package:flutter/material.dart';

class ProfileScreenData extends StatefulWidget {
  const ProfileScreenData({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreenData> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 255,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(170),
                bottomRight: Radius.circular(170),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 45),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/back_white.png', width: 30),
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      'PROFILE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'ALAIN NKEH MBUNKUR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image.jpg'),
                  radius: 50,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TabBar(
            controller: _tabController,
            indicatorColor: Color(0xFF7ED957),
            tabs: [
              Tab(
                icon: Image.asset('assets/information.png', width: 20, height: 20),
                text: 'STUDENT DATA',
              ),
              Tab(
                icon: Image.asset('assets/profile.png', width: 20, height: 20),
                text: 'CONTACT',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                StudentData(),
                ContactInfo(),
              ],
            ),
          ),
          // Expanded(
          //   child: Container(
          //     height: 6,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //     ),
          //     child: Image.asset('assets/home_white.jpg', height: ,),
          //   ),),
        ],
      ),
    );
  }
}

class StudentData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Information',
            style: TextStyle(
              color: Color(0xFFA6A2A2),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('STUDENT NAME:\t',style: TextStyle(
                color: Color(0xFFA6A2A2),
                fontSize: 15,
              ), ),
             Expanded(child:  Text('ALAIN NKEH MBUNKUR',style: TextStyle(
               color: Colors.blue,
               fontSize: 15,
             ),),),
            ],
          ),

         Expanded(child:  Row(
           children: [
             Text('DEGREE PROGRAM:\t',style: TextStyle(
               color: Color(0xFFA6A2A2),
               fontSize: 15,
             ), ),
             Expanded(child:  Text('B.ENG COMPUTER ENGINEERING',style: TextStyle(
               color: Colors.blue,
               fontSize: 15,
             ),),),
           ],
         ),),

          Expanded(child:  Row(
            children: [
              Text('MATRICULE NUMBER:',style: TextStyle(
                color: Color(0xFFA6A2A2),
                fontSize: 15,
              ), ),
              Expanded(child:  Text('FE21A133',style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),),),
            ],
          ),),

          Expanded(child:  Row(
            children: [
              Text('FACULTY:\t',style: TextStyle(
                color: Color(0xFFA6A2A2),
                fontSize: 15,
              ), ),
              Expanded(child:  Text('FACULTY OF ENGINEERING AND TECHNOLOGY',style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),),),
            ],
          ),),

          Expanded(child:  Row(
            children: [
              Text('DEPARTMENT:\t',style: TextStyle(
                color: Color(0xFFA6A2A2),
                fontSize: 15,
              ), ),
              Expanded(child:  Text('DEPARTMENT OF COMPUTER ENGINEERING',style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),),),
            ],
          ),),


         Expanded(
           child: Container(
         ),),

        ],
      ),

    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Details',
            style: TextStyle(
              color: Color(0xFFA6A2A2),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 3,),
          Row(
            children: [
              Image.asset('assets/email.png'),
              const SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Institutional email:\t',style: TextStyle(
                    color: Color(0xFFA6A2A2),
                    fontSize: 15,
                  ), ),
                  Text('alainmbunkur@gmail.com',style: TextStyle(
                    color: Color(0xFFA6A2A2),
                    fontSize: 15,
                  ),),
                ],
              ),
            ],
          ),
         // const SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/email.png'),
              const SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alternative email:\t',style: TextStyle(
                    color: Color(0xFFA6A2A2),
                    fontSize: 15,
                  ), ),
                  Text('alainmbunkur@gmail.com',
                    style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),),
                ],
              ),
            ],
          ),
          //const SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/phone.png', height: 50,),
              const SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone Number:\t',style: TextStyle(
                    color: Color(0xFFA6A2A2),
                    fontSize: 15,
                  ), ),
                  Text('650030112',style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),),
                ],
              ),
            ],
          ),
          //Expanded(child: SizedBox(height: 10,),),

         const SizedBox(height: 20,),
                  Container(
                    child: Center(
                      child: Container(
                        //padding: EdgeInsets.all(0),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF7ED957),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:
                        Center(
                          child: Text("UPDATE", style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),),
                        ),
                      ),
                    ),
                  ),



         // Expanded(child: SizedBox(height: 10,),),

        ],
      ),
    );
  }
}
