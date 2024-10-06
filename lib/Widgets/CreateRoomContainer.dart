import 'package:facebookui/data/data.dart';
import 'package:flutter/material.dart';
class CreateRoomContainer extends StatelessWidget {
  const CreateRoomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Create Room Button
         Container(
           padding: EdgeInsets.all(8.0),
           margin: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 0.0),
           decoration: BoxDecoration(
             border: Border.all(width: 2.0,color: Colors.blue),
             borderRadius: BorderRadius.circular(15.0)
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Icon(Icons.video_call,color: Colors.purple,size: 40,),
               SizedBox(width: 7.0,),
               Text("Create\nRoom",style: TextStyle(color: Colors.blue),)
             ],
           ),
         ),
          Expanded(
            child: Center(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: onlineUsers.length,
                  itemBuilder: (context,index){
                    final onlineusers = onlineUsers[index];
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin:EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            backgroundImage:NetworkImage(onlineusers.imageUrl),
                            radius: 22,
                          ),
                        ),
                        Positioned(
                            bottom :32.0,
                            right:5.0,
                            child: Container(
                              height:15.0,
                              width:15.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                              ),
                            ))
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
