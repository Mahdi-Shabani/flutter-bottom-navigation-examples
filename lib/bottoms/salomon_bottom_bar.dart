import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonBottomDemo extends StatefulWidget {
  const SalomonBottomDemo({super.key});

  @override
  State<SalomonBottomDemo> createState() => _SalomonBottomDemoState();
}

class _SalomonBottomDemoState extends State<SalomonBottomDemo> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Likes")),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text("Likes"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
