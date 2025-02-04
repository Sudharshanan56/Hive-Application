// import 'package:flutter/material.dart';

// class ProfilePage_edit extends StatelessWidget {
//   const ProfilePage_edit({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//             // Handle back action
//           },
//         ),
//         title: const Text(
//           'Edit profile',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               // Handle cancel action
//             },
//             child: const Text(
//               'Cancel',
//               style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Center(
//               child: Stack(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: const AssetImage('assets/profile_placeholder.png'), // Replace with your image asset
//                     backgroundColor: Colors.grey.shade300,
//                   ),
//                    Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: CircleAvatar(
//                       radius: 16,
//                       backgroundColor: Colors.blue,
//                       child: Icon(
//                         Icons.add,
//                         color: Colors.white,
//                         size: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//              SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Enter Name',
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Enter email',
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 60,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: '+91',
//                       filled: true,
//                       fillColor: Colors.grey.shade100,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter number',
//                       filled: true,
//                       fillColor: Colors.grey.shade100,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 '*Make changes to your personal details only once per month.',
//                 style: TextStyle(color: Colors.red, fontSize: 12),
//               ),
//             ),
//             const Spacer(),
//             SizedBox(
//               height: 50,
//               width: 380,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   // Handle save action
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                 ),
//                 child: const Text(
//                   'Save',
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePageEdit extends StatelessWidget {
  const ProfilePageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child:  Text(
              'Cancel',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.15,
                      backgroundImage:
                           AssetImage('assets/profile_placeholder.png'),
                      backgroundColor: Colors.grey.shade300,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: screenWidth * 0.05,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildTextField('Enter Name'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextField('Enter Email'),
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.2,
                    child: _buildTextField('+91', isSmall: true),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Expanded(
                    child: _buildTextField('Enter Number'),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '*Make changes to your personal details only once per month.',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              SizedBox(
                height: screenHeight * 0.07,
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3C97D3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:  Text(
                    'Save',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool isSmall = false}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding:
            isSmall ? const EdgeInsets.all(10) : const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType:
          hintText == 'Enter Number' ? TextInputType.phone : TextInputType.text,
    );
  }
}
