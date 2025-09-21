import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBottomDemo extends StatefulWidget {
  const GoogleBottomDemo({super.key});

  @override
  State<GoogleBottomDemo> createState() => _GoogleBottomDemoState();
}

class _GoogleBottomDemoState extends State<GoogleBottomDemo> {
  int _selectedIndex = 0;

  final _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Likes")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          padding: const EdgeInsets.all(12),
          selectedIndex: _selectedIndex,
          onTabChange: (i) => setState(() => _selectedIndex = i),
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.favorite, text: 'Likes'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
