import 'package:flutter/material.dart';

class ScrollBehindBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // Allows content to extend behind the bottom bar
      body: Stack(
        children: [
          // Scrollable content behind the BottomNavigationBar
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                50,
                    (index) => Container(
                  height: 100,
                  color: index.isEven ? Colors.blue[100] : Colors.blue[200],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // BottomNavigationBar stays fixed on top of the content
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            SizedBox(width: 50), // Space for FloatingActionButton
            IconButton(
              icon: Icon(Icons.grid_view),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
