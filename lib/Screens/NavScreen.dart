import 'package:facebookui/Screens/HomeScreen.dart';
import 'package:facebookui/Widgets/Responsive.dart';
import 'package:flutter/material.dart';
class Navscreen extends StatefulWidget {
  List<Widget> screens =[
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  List<Icon> icons =[
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home),
  ];
  Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}
