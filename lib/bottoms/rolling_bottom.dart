import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

class RollingBottomDemo extends StatefulWidget {
  const RollingBottomDemo({super.key});

  @override
  State<RollingBottomDemo> createState() => _RollingBottomDemoState();
}

class _RollingBottomDemoState extends State<RollingBottomDemo> {
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          Center(child: Text("Home")),
          Center(child: Text("Search")),
          Center(child: Text("Favorite")),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: RollingBottomBar(
        controller: _pageController,
        color: Colors.blueAccent,
        flat: true,
        itemColor: Colors.white,
        useActiveColorByDefault: false,
        items: const [
          RollingBottomBarItem(
            Icons.home,
            label: 'Home',
            activeColor: Colors.white,
          ),
          RollingBottomBarItem(
            Icons.search,
            label: 'Search',
            activeColor: Colors.white,
          ),
          RollingBottomBarItem(
            Icons.favorite,
            label: 'Likes',
            activeColor: Colors.white,
          ),
          RollingBottomBarItem(
            Icons.person,
            label: 'Profile',
            activeColor: Colors.white,
          ),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
