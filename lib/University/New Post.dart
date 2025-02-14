// import 'package:flutter/material.dart';

// import '../University/Dashboard.dart';
// import '../University/Intro_3.dart';



// class new_post extends StatefulWidget {

//   const new_post({super.key});

//   @override
//   State<new_post> createState() => _new_postState();
// }

// class _new_postState extends State<new_post> {

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final TextEditingController controller = TextEditingController();
//     final List<String> tags = [];

//     void addTag(String tag) {
//       if (tag.isNotEmpty && !tags.contains(tag)) {
//         setState(() {
//           tags.add(tag);
//         });
//         controller.clear();
//       }
//     }
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.arrow_back),
//         title: const Text('New article'),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text(
//               'Cancel',
//               style: TextStyle(color: Colors.red),
//             ),
//           ),
//         ],
//         backgroundColor: Colors.white,
//         elevation: 1,
//         foregroundColor: Colors.black,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // University Info
//             const Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/7.png'), // Replace with your image asset
//                   radius: 24,
//                 ),
//                 SizedBox(width: 12),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Asia International University',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     Text(
//                       'Bukhara city, UZ',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 24),

//             // Article Title Input
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: 'Plans in the field of investment',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Article Subtitle Input
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: 'Information was provided on',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Image
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 image:  const DecorationImage(
//                   image: AssetImage('assets/person.png'), // Replace with your image asset
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Tags
//             //tagXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//             Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // TextFormField with Tags
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Wrap(
//                       spacing: 8.0,
//                       runSpacing: 8.0,
//                       children: [
//                         ...tags.map((tag) => Chip(
//                           label: Text(tag),
//                           deleteIcon: const Icon(Icons.close),
//                           onDeleted: () {
//                             setState(() {
//                               tags.remove(tag);
//                             });
//                           },
//                         )),
//                         SizedBox(
//                           width: 400,
//                           child: TextField(
//                             controller: controller,
//                             decoration: const InputDecoration(
//                               hintText: 'Add tag',
//                               border: InputBorder.none,
//                             ),
//                             onSubmitted: (value) {
//                               addTag(value);
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Article Description
//             const TextField(
//               maxLines: 5,
//               decoration: InputDecoration(
//                 hintText:
//                 '1.3 times to 36 billion, launching 560 projects worth 70 trillion soums and creating opportunities to increase exports by 1 billion next year. For 2024, 43 billion in investments and over 300 major projects are planned, including 662 import-substitution products.',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 24),
//             const TextField(
//               maxLines: 5,
//               decoration: InputDecoration(
//                 hintText:"Highlights",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20,),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {

//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>UnivProfilePage()));

//                   // Handle Get OTP or Verify action
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF333333),
//                   padding: EdgeInsets.symmetric(
//                     horizontal: screenWidth * 0.3,
//                     vertical: screenHeight * 0.02,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text("Publish",style: TextStyle(
//                   fontSize: screenWidth * 0.045,
//                   color: Colors.white,
//                 ),),
//                 // style: TextStyle(
//                 //     fontSize: screenWidth * 0.045,
//                 //     color: Colors.white,
//                 //   ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
