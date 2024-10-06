import 'package:flutter/material.dart';
class ReUsableIconWithLabel extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function function;
  const ReUsableIconWithLabel({super.key, required this.label, required this.icon, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          // IconButton(onPressed:function(), icon: Icon(icon)),
          Text(label)
        ],
      ),
    );
  }
}
