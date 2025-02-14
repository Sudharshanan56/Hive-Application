// import 'package:flutter/material.dart';

// import 'Edit Profile.dart';
// import 'Help & support.dart';
// import 'New Post.dart';
// import 'Screen_1.dart';
// import 'Settings.dart';
// import 'Viewall_univprofile.dart';

// class UnivProfilePage extends StatelessWidget {
//   final List<ArticleModel> articles = [
//     ArticleModel(
//       imageUrl: 'assets/person.png',
//       title: 'Information was provided on...',
//     ),
//     ArticleModel(
//       imageUrl: 'assets/person.png',
//       title: 'Information was provided on...',
//     ),
//     ArticleModel(
//       imageUrl: 'assets/person.png',
//       title: 'Information was provided on...',
//     ),
//   ];

//    UnivProfilePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20),
//             // Profile Header
//             // Stack(
//             //   children: [
//             //     Container(
//             //       width: double.infinity,
//             //       height: 150,
//             //       child: Image(image: AssetImage("assets/bg.png"),fit: BoxFit.cover,),
//             //     ),
//             //     Positioned(
//             //       top: 100,
//             //       left: MediaQuery.of(context).size.width / 2 - 50,
//             //       child: CircleAvatar(
//             //         radius: 50,
//             //         backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
//             //       ),
//             //     ),
//             //   ],
//             // ),

//             SizedBox(
//               height: 200,
//               child: Stack(
//                 children: [
//                   SizedBox(
//                     width: double.infinity,
//                     height: 150,
//                     child: const Image(
//                       image: AssetImage("assets/bg.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     top: 90, // Adjust this value to move the CircleAvatar above the bg.png
//                     left: MediaQuery.of(context).size.width / 2 - 50,
//                     child: const CircleAvatar(
//                       radius: 50,
//                       backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
//                     ),
//                   ),
//                   const Positioned(
//                       top: 150,
//                       left: 230,
//                       child: CircleAvatar(
//                           backgroundColor: Colors.blue,
//                           child: Icon(Icons.image_outlined,color: Colors.white,)))
//                 ],
//               ),
//             ),

//             const SizedBox(height: 10),
//             const Text(
//               'ASIA INTERNATIONAL UNIVERSITY',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               'Empowering Your Future, Shaping Skilled Professionals',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey[600],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle New Post
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const new_post()));
//                   },
//                   style: ElevatedButton.styleFrom(

//                     backgroundColor: Colors.white,

//                   ),
//                   child: const Text('New Post',style: TextStyle(color: Colors.blue),),
//                 ),
//                 const SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileScreen()));
//                     // Handle Edit Profile
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                   ),
//                   child: const Text('Edit Profile',style: TextStyle(color: Colors.white),),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             // About Section
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'About',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     "Our goal is to provide contemporary education facilities which respond to the highest standards. The university’s academic curriculum aligns with both national and international benchmarks, offering opportunities to realize your talents and passions. Our faculty is committed to sharing their expertise and knowledge with you. Asia International University ensures your development into a seasoned professional in your field.",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Location',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const Text(
//                     'Bukhara city, UZ',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Stats Section
//             const Divider(),
//             const Divider(),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       const Text(
//                         '26',
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         'Profile views',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ],
//                   ),

//                   Column(
//                     children: [
//                       const Text(
//                         '256',
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         'Post views',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ],
//                   ),

//                   Column(
//                     children: [
//                       const SizedBox(height: 28,),
//                       const Text(
//                         '28th Dec',
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         'Last Update',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                       const Divider(),
//                       const Divider(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Text(
//                     'Recent Articles',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 280,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     padding: const EdgeInsets.symmetric(horizontal: 12),
//                     itemCount: articles.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         width: 200,
//                         margin: const EdgeInsets.symmetric(horizontal: 4),
//                         child: Card(
//                           elevation: 2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
//                                 child: Image.network(
//                                   articles[index].imageUrl,
//                                   height: 160,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                   // Add a placeholder for loading
//                                   loadingBuilder: (context, child, loadingProgress) {
//                                     if (loadingProgress == null) return child;
//                                     return const Center(child: CircularProgressIndicator());
//                                   },
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(12),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       articles[index].title,
//                                       maxLines: 2,
//                                       overflow: TextOverflow.ellipsis,
//                                       style: const TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     // SizedBox(height: 12),
//                                     ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverAppBarExample(
                                          
//                                         )));
//                                         // Add your read action here
//                                       },
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.blue,
//                                         minimumSize: const Size(double.infinity, 36),
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(8),
//                                         ),
//                                       ),
//                                       child: Text('Read',style: TextStyle(color: Colors.white),),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 const Divider(),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ViewallUnivprofile()));
//                       // Add your view all action here
//                     },
//                     child: const Center(child: Text('View all')),
//                   ),
//                 ),
//                 const Divider(),
//                 //Help & Support and Settings buttons
//                 Material(
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: const Icon(Icons.help_outline),
//                         title: const Text('Help & Support'),
//                         trailing: const Icon(Icons.chevron_right),
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpSupportPage()));
//                           // Add your help & support action here
//                         },
//                       ),
//                       ListTile(
//                         leading: const Icon(Icons.settings),
//                         title: const Text('Settings'),
//                         trailing: const Icon(Icons.chevron_right),
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsScreen()));
//                           // Add your settings action here
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),

//       ),
//     );
//   }
// }

// class ArticleModel {
//   final String imageUrl;
//   final String title;

//   ArticleModel({
//     required this.imageUrl,
//     required this.title,
//   });
// }



