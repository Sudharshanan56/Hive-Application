import 'package:flutter/material.dart';

class ScrollBehindBottomNavBar extends StatelessWidget {
  const ScrollBehindBottomNavBar({super.key});

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
                      style: const TextStyle(fontSize: 20),
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
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            const SizedBox(width: 50), // Space for FloatingActionButton
            IconButton(
              icon: const Icon(Icons.grid_view),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
