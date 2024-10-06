import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebookui/Models/User.dart';
import 'package:facebookui/data/data.dart';
import 'package:flutter/material.dart';

import 'ReUsableButtons.dart';
class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User;
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          /// CircleAvatar and TextField
          Row(
            children: [
              /// CircleImage
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              SizedBox(width: 8.0,),
              /// and EditTextField Container
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\s On Your Mind"
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Reusablebuttons(icon: Icons.video_camera_back,iconcolor: Colors.red,Label: "Live",function: ()=>print("Live"),),
              Reusablebuttons(icon: Icons.photo_library,iconcolor: Colors.green,Label: "Photos",function: ()=>print("Photos"),),
              Reusablebuttons(icon: Icons.video_call,iconcolor: Colors.purple,Label: "Room",function: ()=>print("Room"),),
            ],
          )
        ],
      ),
    );
  }
}
