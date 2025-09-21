import 'package:flutter/material.dart';

// 👇 یکی رو فعال کن
//import 'bottoms/curved_bottom.dart';
//import 'bottoms/convex_bottom.dart';
//import 'bottoms/flashy_bottom.dart';
//import 'bottoms/google_bottom.dart';
//import 'bottoms/motion_bottom.dart';
//import 'bottoms/glass_bottom.dart';
//import 'bottoms/rolling_bottom.dart';
//import 'bottoms/titled_bottom.dart';
//import 'bottoms/fluid_bottom.dart';
import 'bottoms/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom NavBar Collection",
      theme: ThemeData.dark(),
      home: const SalomonBottomDemo(), // تغییر به دمو جدید
    );
  }
}
