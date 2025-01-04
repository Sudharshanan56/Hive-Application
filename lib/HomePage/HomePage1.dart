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

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
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
    return const Center(
      child: Text('The Bottom Sheet is automatically displayed.'),
    );
  }
}
