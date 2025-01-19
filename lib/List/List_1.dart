// import 'package:flutter/material.dart';
//
//
//
// class UniversityListPage extends StatefulWidget {
//   @override
//   State<UniversityListPage> createState() => _UniversityListPageState();
// }
//
// class _UniversityListPageState extends State<UniversityListPage> {
//   bool _isChecked = false;
//
//   final List<Map<String, String>> universities = [
//     {
//       'name': 'Mari State University',
//       'location': 'Moscow, RU',
//       'logo': 'assets/7.png',
//     },
//     {
//       'name': 'Asia International University',
//       'location': 'Bukhara city, UZ',
//       'logo': 'assets/8.png',
//     },
//     {
//       'name': 'Jalal-Abad State University',
//       'location': 'Jalal-Abad, KGZ',
//       'logo': 'assets/9.png',
//     },
//     {
//       'name': 'TBILISI STATE MEDICAL UNIVERSITY',
//       'location': 'Tbilisi, GA',
//       'logo': 'assets/10.png',
//     },
//     {
//       'name': 'GEORGIA MEDICAL COLLEGE',
//       'location': 'Augusta, GA',
//       'logo': 'assets/11.png',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.white,
//       //   elevation: 0,
//       //   title: const TextField(
//       //     decoration: InputDecoration(
//       //       hintText: 'Search',
//       //       prefixIcon: Icon(Icons.search),
//       //       border: InputBorder.none,
//       //       fillColor: Color(0xFFF5F5F5),
//       //       filled: true,
//       //     ),
//       //   ),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               height: 50,
//               width: 400,
//               decoration: BoxDecoration(
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(30)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Icon(Icons.search),
//                     hintText: "Search",
//
//
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Universities',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _isChecked,
//                       onChanged: (bool? newValue) {
//                         setState(() {
//                           _isChecked = newValue!;
//                         });
//                       },
//                     ),
//                     const Text('Saved'),
//                     // SizedBox(width: 4),
//                     // Icon(Icons.check_box_outline_blank),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: universities.length,
//                 itemBuilder: (context, index) {
//                   final university = universities[index];
//                   return Column(
//                     children: [
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: AssetImage(university['logo']!),
//                         ),
//                         title: Text(university['name']!),
//                         subtitle: Text(university['location']!),
//                         trailing: IconButton(
//                           icon: const Icon(Icons.bookmark_border),
//                           onPressed: () {},
//                         ),
//                       ),
//                       const Divider(),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// class UniversityListPage extends StatefulWidget {
//   @override
//   State<UniversityListPage> createState() => _UniversityListPageState();
// }
//
// class _UniversityListPageState extends State<UniversityListPage> {
//
//   bool _isChecked = false;
//
//   // Track bookmark state for each university
//   List<bool> _bookmarked = [false, false, false, false, false];
//
//   final List<Map<String, String>> universities = [
//     {
//       'name': 'Mari State University',
//       'location': 'Moscow, RU',
//       'logo': 'assets/7.png',
//     },
//     {
//       'name': 'Asia International University',
//       'location': 'Bukhara city, UZ',
//       'logo': 'assets/8.png',
//     },
//     {
//       'name': 'Jalal-Abad State University',
//       'location': 'Jalal-Abad, KGZ',
//       'logo': 'assets/9.png',
//     },
//     {
//       'name': 'TBILISI STATE MEDICAL UNIVERSITY',
//       'location': 'Tbilisi, GA',
//       'logo': 'assets/10.png',
//     },
//     {
//       'name': 'GEORGIA MEDICAL COLLEGE',
//       'location': 'Augusta, GA',
//       'logo': 'assets/11.png',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 30),
//             Container(
//               height: 50,
//               width: 400,
//               decoration: BoxDecoration(
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Icon(Icons.search),
//                     hintText: "Search",
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Universities',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _isChecked,
//                       checkColor: Colors.white,
//                       activeColor: Colors.blue,
//                       onChanged: (bool? newValue) {
//                         setState(() {
//                           _isChecked = newValue!;
//                         });
//                       },
//                     ),
//                     Text('Saved'),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: universities.length,
//                 itemBuilder: (context, index) {
//                   final university = universities[index];
//
//                   // If 'Saved' checkbox is checked, show only bookmarked universities
//                   if (_isChecked && !_bookmarked[index]) {
//                     return SizedBox.shrink(); // Skip this item
//                   }
//
//                   return Column(
//                     children: [
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: AssetImage(university['logo']!),
//                         ),
//                         title: Text(university['name']!),
//                         subtitle: Text(university['location']!),
//                         trailing: IconButton(
//                           icon: Icon(
//                             _bookmarked[index] ? Icons.bookmark : Icons.bookmark_border,
//                             color: _bookmarked[index] ? Colors.black : null,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _bookmarked[index] = !_bookmarked[index];
//                             });
//                           },
//                         ),
//                       ),
//                       Divider(),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class UniversityListPage extends StatefulWidget {
  @override
  State<UniversityListPage> createState() => _UniversityListPageState();
}

class _UniversityListPageState extends State<UniversityListPage> {
  bool _isChecked = false;

  // Track bookmark state for each university
  List<bool> _bookmarked = [false, false, false, false, false];

  final List<Map<String, String>> universities = [
    {
      'name': 'Mari State University',
      'location': 'Moscow, RU',
      'logo': 'assets/7.png',
    },
    {
      'name': 'Asia International University',
      'location': 'Bukhara city, UZ',
      'logo': 'assets/8.png',
    },
    {
      'name': 'Jalal-Abad State University',
      'location': 'Jalal-Abad, KGZ',
      'logo': 'assets/9.png',
    },
    {
      'name': 'TBILISI STATE MEDICAL UNIVERSITY',
      'location': 'Tbilisi, GA',
      'logo': 'assets/10.png',
    },
    {
      'name': 'GEORGIA MEDICAL COLLEGE',
      'location': 'Augusta, GA',
      'logo': 'assets/11.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(screenWidth * 0.06),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, size: screenWidth * 0.06),
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Universities',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Row(
                //   children: [
                //     Checkbox(
                //       value: _isChecked,
                //       checkColor: Colors.white,
                //       activeColor: Colors.blue,
                //       onChanged: (bool? newValue) {
                //         setState(() {
                //           _isChecked = newValue!;
                //         });
                //       },
                //     ),
                //     Text(
                //       'Saved',
                //       style: TextStyle(fontSize: screenWidth * 0.04),
                //     ),
                //   ],
                // ),
                Row(
                  children: [
                    Transform.scale(
                      scale: MediaQuery.of(context).size.width * 0.0020, // Scale dynamically based on screen width
                      child: Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue!;
                          });
                        },
                      ),
                    ),
                    Text(
                      ' Saved',
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Expanded(
              child: ListView.builder(
                itemCount: universities.length,
                itemBuilder: (context, index) {
                  final university = universities[index];

                  // If 'Saved' checkbox is checked, show only bookmarked universities
                  if (_isChecked && !_bookmarked[index]) {
                    return SizedBox.shrink(); // Skip this item
                  }

                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: screenWidth * 0.07,
                          backgroundImage: AssetImage(university['logo']!),
                        ),
                        title: Text(
                          university['name']!,
                          style: TextStyle(fontSize: screenWidth * 0.045),
                        ),
                        subtitle: Text(
                          university['location']!,
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            _bookmarked[index]
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            color: _bookmarked[index] ? Colors.black : null,
                            size: screenWidth * 0.06,
                          ),
                          onPressed: () {
                            setState(() {
                              _bookmarked[index] = !_bookmarked[index];
                            });
                          },
                        ),
                      ),
                      Divider(thickness: 1, height: screenHeight * 0.02),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
