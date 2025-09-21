import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedBottomDemo extends StatefulWidget {
  const CurvedBottomDemo({super.key});

  @override
  State<CurvedBottomDemo> createState() => _CurvedBottomDemoState();
}

class _CurvedBottomDemoState extends State<CurvedBottomDemo> {
  int _page = 0;

  final _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Add")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60,
        backgroundColor: Colors.transparent,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.add, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        onTap: (i) => setState(() => _page = i),
      ),
    );
  }
}
