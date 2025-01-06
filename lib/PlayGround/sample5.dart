import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  final List<ArticleModel> articles = [
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recent Articles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                          child: Image.network(
                            articles[index].imageUrl,
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            // Add a placeholder for loading
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(child: CircularProgressIndicator());
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                articles[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                             // SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your read action here
                                },
                                child: Text('Read'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: Size(double.infinity, 36),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                // Add your view all action here
              },
              child: Text('View all'),
            ),
          ),
          //Help & Support and Settings buttons
          Material(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    // Add your help & support action here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    // Add your settings action here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleModel {
  final String imageUrl;
  final String title;

  ArticleModel({
    required this.imageUrl,
    required this.title,
  });
}