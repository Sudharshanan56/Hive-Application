import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile', style: TextStyle(color: Colors.black)),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: false,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              // Profile Header
              Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rajasekar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'NEET202454321',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      backgroundColor: Color(0xff5A9ECF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Average Score and Tests Taken
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          child:
                              Column(
                                children: [
                                  SizedBox(height: 25,),
                                  Text("Average",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  Text("Score",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),


                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                             // color: Color(0xff5A9ECF),
                              decoration: BoxDecoration(
                                color: const Color(0xff5A9ECF), // Light blue color
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(60),
                                 bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Center(child: Text("86",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),

                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),

                  Container(
                    height: 100,
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              // color: Color(0xff5A9ECF),
                              decoration: BoxDecoration(
                                color: const Color(0xff5A9ECF), // Light blue color
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(60),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(60),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Center(child: Text("16",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),

                            )
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 80,
                          child:
                          Column(
                            children: [
                              SizedBox(height: 25,),
                              Text("Tests",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Text("Taken",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                            ],
                          ),


                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              // Eligibility Section
              Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eligibility',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          '97',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Help & Support and Settings
              ListTile(
                leading: Icon(Icons.headset_mic_outlined, color: Colors.grey[700]),
                title: Text('Help & Support',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.settings_outlined, color: Colors.grey[700]),
                title: Text('Settings',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }


}
