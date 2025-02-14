// import 'package:flutter/material.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({super.key});

//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   final TextEditingController _searchController = TextEditingController();
//   final List<String> suggestions = ['College', 'Exams', 'Articles', 'Updates'];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Color(0xFFF4FAFF),
//           title: Text(
//             'Search',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 17,
//                 color: Color(0xFF1E293B)),
//           ),
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Color(0xFF1E293B),
//               size: 17,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 controller: _searchController,
//                 decoration: InputDecoration(
//                   prefixIcon: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(Icons.search),
//                   ),
//                   hintText: 'Search',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                   filled: true,
//                   fillColor: Color(0xFFF1F1F1),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Suggestions',
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               ...suggestions.map((suggestion) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _searchController.text = suggestion;
//                       });
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 8.0),
//                       child: Text(
//                         suggestion,
//                         style: TextStyle(fontSize: 15),
//                       ),
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> suggestions = ['College', 'Exams', 'Articles', 'Updates'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth > 600; // Check for tablet devices

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFF4FAFF),
          title: Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: isTablet ? 20 : 17,
              color: Color(0xFF1E293B),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF1E293B),
              size: isTablet ? 20 : 17,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: Icon(Icons.search, size: screenWidth * 0.06),
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF1F1F1),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.04,
                    ),
                  ),
                  style: TextStyle(fontSize: isTablet ? 18 : 15),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                'Suggestions',
                style: TextStyle(
                  fontSize: isTablet ? 18 : 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Expanded(
                child: ListView.builder(
                  itemCount: suggestions.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _searchController.text = suggestions[index];
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          suggestions[index],
                          style: TextStyle(
                            fontSize: isTablet ? 17 : 15,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
