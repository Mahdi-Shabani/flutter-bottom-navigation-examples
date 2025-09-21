import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class TitledBottomDemo extends StatefulWidget {
  const TitledBottomDemo({super.key});

  @override
  _TitledBottomDemoState createState() => _TitledBottomDemoState();
}

class _TitledBottomDemoState extends State<TitledBottomDemo> {
  int _currentIndex = 0;

  final _pages = const [
    Center(
      child: Text("Home Page", style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text("Search Page", style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text("Alerts Page", style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text("Profile Page", style: TextStyle(color: Colors.white)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: _pages[_currentIndex],

      bottomNavigationBar: TitledBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),

        activeColor: const Color.fromARGB(255, 236, 0, 0),
        inactiveColor: const Color.fromARGB(255, 196, 5, 5),
        indicatorColor: Colors.greenAccent,
        inactiveStripColor: const Color(0xFF1E1E1E),

        items: [
          TitledNavigationBarItem(
            title: Text(
              'Home',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            icon: const Icon(Icons.home),
          ),
          TitledNavigationBarItem(
            title: Text(
              'Search',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            icon: const Icon(Icons.search),
          ),
          TitledNavigationBarItem(
            title: Text(
              'Alerts',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            icon: const Icon(Icons.notifications),
          ),
          TitledNavigationBarItem(
            title: Text(
              'Profile',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
