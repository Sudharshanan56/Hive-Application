import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CurvedSliverAppBar(),
  ));
}

class CurvedSliverAppBar extends StatelessWidget {
  const CurvedSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CurvedSliverAppBarDelegate(
              expandedHeight: 250,
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (index) => ListTile(title: Text("Item $index")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  CurvedSliverAppBarDelegate({required this.expandedHeight});

  @override
  double get minExtent => kToolbarHeight;
  @override
  double get maxExtent => expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = (1 - shrinkOffset / expandedHeight).clamp(0.0, 1.0);
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipPath(
          clipper: CurvedAppBarClipper(),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png", // Replace with your image
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Opacity(
            opacity: percent,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Asia International University",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(CurvedSliverAppBarDelegate oldDelegate) {
    return oldDelegate.expandedHeight != expandedHeight;
  }
}

class CurvedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
