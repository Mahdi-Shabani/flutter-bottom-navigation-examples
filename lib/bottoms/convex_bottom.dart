import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class ConvexBottomDemo extends StatefulWidget {
  const ConvexBottomDemo({super.key});

  @override
  State<ConvexBottomDemo> createState() => _ConvexBottomDemoState();
}

class _ConvexBottomDemoState extends State<ConvexBottomDemo> {
  int _index = 0;

  final _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Discovery")),
    Center(child: Text("Add")),
    Center(child: Text("Messages")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: Colors.blue,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Messages'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}
