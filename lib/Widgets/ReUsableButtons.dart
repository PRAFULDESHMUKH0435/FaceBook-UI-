import 'package:flutter/material.dart';
class Reusablebuttons extends StatelessWidget {
  final Label;
  final IconData icon;
  final Color iconcolor;
  final Function function;
  const Reusablebuttons({super.key, required this.Label, required this.icon, required this.iconcolor, required this.function});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child:Row(children: [Icon(icon,color:iconcolor,),SizedBox(width: 5,),Text(Label)],),
        onPressed: (){});
  }
}
