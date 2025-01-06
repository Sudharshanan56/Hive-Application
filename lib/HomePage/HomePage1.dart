// import 'package:flutter/material.dart';
//
//
//
//
//
// class BottomSheetApp extends StatelessWidget {
//   const BottomSheetApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // TextEditingController mail=TextEditingController();
//
//     return MaterialApp(
//
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
//         body: const BottomSheetExample(),
//       ),
//     );
//   }
// }
//
// class BottomSheetExample extends StatelessWidget {
//
//   const BottomSheetExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController mail=TextEditingController();
//
//
//     return Center(
//       child: ElevatedButton(
//         child: const Text('showModalBottomSheet'),
//         onPressed: () {
//           showModalBottomSheet<void>(
//             context: context,
//             isDismissible: false, // Prevent closing by tapping outside.
//             enableDrag: false, // Disable dragging to close.
//             builder: (BuildContext context) {
//               return Container(
//                 height: 200,
//                 color: Colors.white,
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       TextField(
//                         controller: mail,
//                         decoration: InputDecoration(
//                           labelText: "Enter email",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       GestureDetector(
//                         onTap: (){
//                           if(mail.text.isNotEmpty)
//                             {
//                               Navigator.pop(context);
//                             }
//                         },
//                         child: Container(
//                           height: 50,
//                           width: 350,
//                           // decoration: BoxDecoration(
//                           //   borderRadius: BorderRadius.circular(20),
//                           // ),
//                           color: Color(0xff3C97D3),
//                           child: Center(child: Text("Verify E mail",style: TextStyle(color: Colors.white,fontSize: 20),))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../Countdown/CountDown.dart';
import '../University/Screen_1.dart';

class BottomSheetApp extends StatelessWidget {
  final List<Map<String, String>> posts = List.generate(10, (index) {
    return {
      'university': 'Mari State University',
      'location': 'Moscow, RU',
      'event': 'Indo-Russian Education Summit',
      'image': 'https://via.placeholder.com/150' // Replace with your image URL
    };
  });
   BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: Column(
          children: [
            ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
                            radius: 30,
                          ),
                          title: Text(post['university']!),
                          subtitle: Text(post['location']!),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '${post['university']} Shines at',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4),
                        Text(
                          post['event']!,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Image(image: AssetImage("assets/post1.png")),
                        SizedBox(height: 16),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle button press
                            },
                            child: Text('Explore Now',style: TextStyle(color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF5A9ECF),
                              shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            BottomSheetExample(),
          ],
        )
      ),
    );
  }
}

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  final TextEditingController mail = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Show the modal bottom sheet automatically after the widget is built.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet<void>(
        context: context,
        isDismissible: false, // Prevent closing by tapping outside.
        enableDrag: false, // Disable dragging to close.
        builder: (BuildContext context) {
          return Container(
            height: 200,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: mail,
                    decoration: InputDecoration(
                      labelText: "Enter email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (mail.text.isNotEmpty) {
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 350,
                      color: const Color(0xff3C97D3),
                      child: const Center(
                        child: Text(
                          "Verify Email",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> posts = List.generate(10, (index) {
      return {
        'university': 'Mari State University',
        'location': 'Moscow, RU',
        'event': 'Indo-Russian Education Summit',
        'image': 'https://via.placeholder.com/150' // Replace with your image URL
      };
    });
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CountdownPage())),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Color(0xFF5A9ECF),
                    ),

                    child: Icon(Icons.school_outlined,color: Colors.white,size: 30,),
                  ),
                )
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
                        radius: 30,
                      ),
                      title: Text(post['university']!),
                      subtitle: Text(post['location']!),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${post['university']} Shines at',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4),
                    Text(
                      post['event']!,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Image(image: AssetImage("assets/post1.png")),
                    SizedBox(height: 16),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverAppBarExample()));
                          // Handle button press
                        },
                        child: Text('Explore Now',style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF5A9ECF),
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        );

      },

    );
  }
}
