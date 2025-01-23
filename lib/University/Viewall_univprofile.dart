import 'package:flutter/material.dart';

import 'New Post.dart';
import 'Screen_1.dart';

class ViewallUnivprofile extends StatefulWidget {
  const ViewallUnivprofile({super.key});

  @override
  State<ViewallUnivprofile> createState() => _ViewallUnivprofileState();
}

class _ViewallUnivprofileState extends State<ViewallUnivprofile> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Profile Header
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: const Image(
                      image: AssetImage("assets/bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 90, // Adjust this value to move the CircleAvatar above the bg.png
                    left: MediaQuery.of(context).size.width / 2 - 50,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                      AssetImage('assets/7.png'), // Replace with your image path
                    ),
                  ),
                  const Positioned(
                    top: 150,
                    left: 230,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.image_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              'ASIA INTERNATIONAL UNIVERSITY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Empowering Your Future, Shaping Skilled Professionals',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const new_post()));
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const new_post()));
                      // Handle New Post
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'New Post',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const SizedBox(width: 35,),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: const Column(
                    children: [
                      SizedBox(height: 20,),
                      Center(child: Text("6",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
                      Text("Published",style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                ),
                const SizedBox(width: 35,),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: const Column(
                    children: [
                      SizedBox(height: 20,),
                      Center(child: Text("4",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
                      Text("Unpublished",style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                ),
                const SizedBox(width: 35,),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: const Column(
                    children: [
                      SizedBox(height: 20,),
                      Center(child: Text("1",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
                      Text("Deleted",style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                ),

              ],
            ),
            const Divider(),

            const SizedBox(height: 20),
            SizedBox(
              height: 280, // Set height for the horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200, // Set width for each item in the ListView
                    margin: const EdgeInsets.symmetric(horizontal: 8), // Space between items
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                            const BorderRadius.vertical(top: Radius.circular(15)),
                            child: Image.asset(
                              articles[index].imageUrl,
                              height: 140,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  articles[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverAppBarExample()));

                                    // Add your read action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    minimumSize: const Size(double.infinity, 36),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text('Read',style: TextStyle(color: Colors.white),),
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
          ],
        ),
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
