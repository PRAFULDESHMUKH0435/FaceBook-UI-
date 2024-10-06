import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey[200],
      title: "Facebook UI ",
      home: HomeScreen(),
    );
  }
}
