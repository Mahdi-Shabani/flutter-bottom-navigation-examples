import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class MotionBottomDemo extends StatefulWidget {
  const MotionBottomDemo({super.key});

  @override
  State<MotionBottomDemo> createState() => _MotionBottomDemoState();
}

class _MotionBottomDemoState extends State<MotionBottomDemo>
    with TickerProviderStateMixin {
  late MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      vsync: this,
      length: 3, // تعداد تب‌ها
    );
  }

  @override
  void dispose() {
    _motionTabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _motionTabBarController,
        children: const [
          Center(child: Text("Home")),
          Center(child: Text("Search")),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        labels: const ["Home", "Search", "Profile"],
        initialSelectedTab: "Home",
        icons: const [Icons.home, Icons.search, Icons.person],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 28.0,
        tabSelectedColor: Colors.white,
        tabIconSelectedColor: Colors.blue,
        tabBarColor: Colors.blueAccent,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController.index = value;
          });
        },
      ),
    );
  }
}
