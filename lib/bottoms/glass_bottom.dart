import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GlassBottomDemo extends StatefulWidget {
  const GlassBottomDemo({super.key});

  @override
  State<GlassBottomDemo> createState() => _GlassBottomDemoState();
}

class _GlassBottomDemoState extends State<GlassBottomDemo> {
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
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                gap: 8,
                backgroundColor: Colors.transparent,
                color: Colors.white,
                activeColor: Colors.blueAccent,
                tabBackgroundColor: Colors.white.withOpacity(0.2),
                padding: const EdgeInsets.all(12),
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                tabs: const [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.search, text: 'Search'),
                  GButton(icon: Icons.favorite, text: 'Likes'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
