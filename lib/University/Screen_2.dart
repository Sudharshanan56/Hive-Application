import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Screen_1.dart';



class PopularTopicsScreen extends StatelessWidget {

  const PopularTopicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List img=[
      "assets/person.png",
      "assets/person_2.png",
      "assets/person_3.png",
      "assets/person_4.png",
      "assets/person_5.png",

    ];
    return Scaffold(
      backgroundColor: Color(0xFF3C97D3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Title
              Text(
                'Asia International University',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Popular Topics',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // Card Section
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF3C97D3),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    // Image Section
                    Stack(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverAppBarExample()));
                          },
                          child: Container(
                            height: 350,
                            width: 350,
                            decoration: BoxDecoration(
                                //border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFF14),
                            ),
                            child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 300.0,
                          
                                  enlargeCenterPage: true,
                                  autoPlay: true,
                                  aspectRatio: 16 / 9,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  viewportFraction: 1,
                          
                          
                                ),
                                itemCount: img.length,
                                itemBuilder: (BuildContext context, int index, int realIndex)
                                {
                                  return Container(
                                    height: 200,
                                    width: 400,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                          
                                          image: AssetImage(img[index]),fit: BoxFit.cover,
                                        )
                                    ),
                                  );
                                }
                            ),
                          ),
                        ),

                        // Positioned(
                        //   bottom: 16,
                        //   left: 16,
                        //   child: Text(
                        //     'plans in the field of investment',
                        //     style: TextStyle(
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white,
                        //       shadows: [
                        //         Shadow(
                        //           color: Colors.black.withOpacity(0.5),
                        //           blurRadius: 4,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Stats Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          // Total Views
                          // Container(
                          //   height: 100,
                          //   width: 380,
                          //   color: Colors.redAccent,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(),
                          //     borderRadius: BorderRadius.circular(20),
                          //
                          //   ),
                          //
                          //   child: Column(
                          //     children: [
                          //
                          //       Text(
                          //         'Total Views',
                          //         style: TextStyle(
                          //           fontSize: 14,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //       const SizedBox(height: 4),
                          //       Text(
                          //         '246',
                          //         style: TextStyle(
                          //           fontSize: 24,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //       const SizedBox(height: 4),
                          //       Text(
                          //         'Total Views Across All Articles',
                          //         style: TextStyle(
                          //           fontSize: 12,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //       const SizedBox(height: 16),
                          //     ],
                          //   ),
                          // ),
                        Container(
                        height: 100,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF14), // Move color here
                          //border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          children: [
                            Text(
                              'Total Views',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '246',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Total Views Across All Articles',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                        SizedBox(height: 20,),

                      // Articles and Last Update Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Articles
                              Container(
                                height:120,
                                width: 170,
                               decoration: BoxDecoration(
                                 color: Color(0xFFDBB0BD),
                                 borderRadius: BorderRadius.circular(10)
                               ),
                                child: Column(

                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 10),
                                          child: Text("   Articles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                        ),
                                      ],

                                    ),
                                    Row(
                                      children: [
                                        Text("  12",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("    Articles Published",style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),

                                  ],
                                )
                              ),
                              // Last Update
                              Container(
                                height:120,
                                width: 170,
                              //
                                decoration: BoxDecoration(
                                    color: Color(0xFFA9C6E6),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15,bottom: 10),
                                          child: Text("   Last update",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                        ),
                                      ],

                                    ),
                                    Row(
                                      children: [
                                        Text("  28th Dec",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("    10:46 pm",style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String label;
  final String value;
  final String description;
  final Color color;

  const StatCard({
    Key? key,
    required this.label,
    required this.value,
    required this.description,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
