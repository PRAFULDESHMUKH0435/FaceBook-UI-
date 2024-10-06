import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/NavScreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey[200],
      title: "Facebook UI ",
      home: Navscreen(),
    );
  }
}
