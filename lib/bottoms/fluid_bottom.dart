import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

class FluidBottomDemo extends StatefulWidget {
  const FluidBottomDemo({super.key});

  @override
  State<FluidBottomDemo> createState() => _FluidBottomDemoState();
}

class _FluidBottomDemoState extends State<FluidBottomDemo> {
  int _page = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Favorites")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.home, extras: {"label": "Home"}),
          FluidNavBarIcon(icon: Icons.search, extras: {"label": "Search"}),
          FluidNavBarIcon(icon: Icons.favorite, extras: {"label": "Likes"}),
          FluidNavBarIcon(icon: Icons.person, extras: {"label": "Profile"}),
        ],
        onChange: (index) {
          setState(() => _page = index);
        },
        style: const FluidNavBarStyle(
          iconSelectedForegroundColor: Colors.white,
          iconUnselectedForegroundColor: Colors.black38,
          barBackgroundColor: Colors.blue,
        ),
        scaleFactor: 1.0,
        defaultIndex: 0,
      ),
    );
  }
}
