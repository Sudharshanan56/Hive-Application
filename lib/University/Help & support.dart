import 'package:flutter/material.dart';


class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help & Support"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
            // Add back button functionality here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoItem(
              icon: Icons.location_on,
              label: "Address",
              content: "NV Arcade, 5 Roads, Salem, TN - 636 004",
            ),
            SizedBox(height: 16),
            InfoItem(
              icon: Icons.phone,
              label: "Phone",
              content: "+91 94889 26736",
            ),
            SizedBox(height: 16),
            InfoItem(
              icon: Icons.language,
              label: "Website",
              content: "www.hiveeduco.in",
            ),
            SizedBox(height: 16),
            InfoItem(
              icon: Icons.email,
              label: "Email",
              content: "hiveeduco.slm@gmail.com",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String content;

  InfoItem({required this.icon, required this.label, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 4),
              Text(
                content,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
