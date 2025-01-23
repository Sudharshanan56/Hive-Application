import 'package:flutter/material.dart';

class ReplyPopupExample extends StatefulWidget {
  const ReplyPopupExample({super.key});

  @override
  _ReplyPopupExampleState createState() => _ReplyPopupExampleState();
}

class _ReplyPopupExampleState extends State<ReplyPopupExample> {
  // Controller for the reply text field
  final TextEditingController _replyController = TextEditingController();

  // Function to show reply popup
  void _showReplyPopup(BuildContext context, String userName) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              TextField(
                controller: _replyController,
                decoration: InputDecoration(
                  hintText: "Reply here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle reply action here
                  print("Reply: ${_replyController.text}");
                  Navigator.of(context).pop(); // Close the popup
                },
                child: const Text("Post"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reply Popup Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildCommentCard(
            userName: "Sanjay",
            comment:
            "This article highlights such promising advancements. AI in diagnostics sounds fascinating, early detection can truly save lives!",
          ),
          _buildCommentCard(
            userName: "Krishna",
            comment:
            "AI in diagnostics is indeed a game-changer! Early detection has the potential to revolutionize healthcare and save countless lives.",
          ),
        ],
      ),
    );
  }

  // Function to build each comment card
  Widget _buildCommentCard({required String userName, required String comment}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(comment),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => _showReplyPopup(context, userName),
                  child: const Text("Reply"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
