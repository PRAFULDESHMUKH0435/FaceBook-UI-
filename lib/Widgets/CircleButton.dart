import 'package:flutter/material.dart';
class CircleButtton extends StatelessWidget {
  final IconData icon;
  final double iconsize;
  final Function onPresseed;
  CircleButtton({super.key, required this.icon, required this.iconsize, required this.onPresseed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
      ),
      child: IconButton(
          onPressed: (){},
          iconSize: 30.0,
          color: Colors.black,
            icon: Icon(icon)),
    );
  }
}
