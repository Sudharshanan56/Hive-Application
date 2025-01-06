// import 'package:flutter/material.dart';
//
//
//
// class TagInputPage extends StatefulWidget {
//   const TagInputPage({Key? key}) : super(key: key);
//
//   @override
//   _TagInputPageState createState() => _TagInputPageState();
// }
//
// class _TagInputPageState extends State<TagInputPage> {
//   final TextEditingController _controller = TextEditingController();
//   final List<String> _tags = [];
//
//   void _addTag(String tag) {
//     if (tag.isNotEmpty && !_tags.contains(tag)) {
//       setState(() {
//         _tags.add(tag);
//       });
//       _controller.clear();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tag Input Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // TextFormField for Tag Input
//             TextFormField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 labelText: 'Add a tag',
//                 border: OutlineInputBorder(),
//               ),
//               onFieldSubmitted: (value) {
//                 _addTag(value);
//               },
//             ),
//             const SizedBox(height: 16),
//
//             // Display Tags
//             Wrap(
//               spacing: 8.0,
//               runSpacing: 8.0,
//               children: _tags.map((tag) {
//                 return Chip(
//                   label: Text(tag),
//                   deleteIcon: const Icon(Icons.close),
//                   onDeleted: () {
//                     setState(() {
//                       _tags.remove(tag);
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TagInputPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class TagInputPage extends StatefulWidget {
  const TagInputPage({Key? key}) : super(key: key);

  @override
  _TagInputPageState createState() => _TagInputPageState();
}

class _TagInputPageState extends State<TagInputPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tags = [];

  void _addTag(String tag) {
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tag Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextFormField with Tags
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  ..._tags.map((tag) => Chip(
                    label: Text(tag),
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {
                      setState(() {
                        _tags.remove(tag);
                      });
                    },
                  )),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Add tag',
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) {
                        _addTag(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
