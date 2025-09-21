import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class FlashyBottomDemo extends StatefulWidget {
  const FlashyBottomDemo({super.key});

  @override
  State<FlashyBottomDemo> createState() => _FlashyBottomDemoState();
}

class _FlashyBottomDemoState extends State<FlashyBottomDemo> {
  int _index = 0;

  final _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Events")),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _index,
        showElevation: true,
        onItemSelected: (i) => setState(() => _index = i),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.event),
            title: const Text('Events'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search),
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
