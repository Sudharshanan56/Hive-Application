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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Universities',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    Text('Saved'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
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
                          backgroundImage: AssetImage(university['logo']!),
                        ),
                        title: Text(university['name']!),
                        subtitle: Text(university['location']!),
                        trailing: IconButton(
                          icon: Icon(
                            _bookmarked[index] ? Icons.bookmark : Icons.bookmark_border,
                            color: _bookmarked[index] ? Colors.black : null,
                          ),
                          onPressed: () {
                            setState(() {
                              _bookmarked[index] = !_bookmarked[index];
                            });
                          },
                        ),
                      ),
                      Divider(),
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
