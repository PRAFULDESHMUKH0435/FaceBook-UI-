import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebookui/Models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

import 'ReUsableIconWithLabel.dart';
class PostsContainer extends StatelessWidget {
  List<Post> posts;
  PostsContainer({super.key,required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context,index){
            final currentpost =posts[index];
            return Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 12.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// CircleAvatar ,Name and Menu Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                       children: [
                         CircleAvatar(
                           radius: 20,
                           backgroundImage:NetworkImage(currentpost.user.imageUrl),
                         ),
                         SizedBox(width: 10,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(currentpost.user.name,style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.black),),
                             Row(children: [
                               Text("${currentpost.timeAgo} . ",style: TextStyle(fontSize: 17,color: Colors.grey),),
                               Icon(MdiIcons.earth)
                             ],)
                           ],
                         ),
                       ],
                     ),
                      Icon(Icons.menu)
                    ],
                  ),
                  Text(currentpost.caption),
                  /// Image Loading And Handling
                  currentpost.imageUrl=="null"?
                      Container(height: 1,)
                  :Container(
                      height: 250,
                      width: double.infinity,
                      child: CachedNetworkImage(imageUrl:currentpost.imageUrl,fit: BoxFit.fill,)),
                  /// Likes Container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.thumb_up_off_alt_sharp,color: Colors.white,),),
                          SizedBox(width: 5,),
                          Text(currentpost.likes.toString())
                        ],
                      ),
                      Row(children: [
                        Text("${currentpost.comments} Comments"),
                        SizedBox(width: 8,),
                        Text("${currentpost.shares} Shares"),
                      ],)
                    ],
                  ),
                  /// Like , Comment And Share Icons
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReUsableIconWithLabel(icon: Icons.thumb_up_off_alt,label: "Like",function: ()=>print("Like"),),
                      ReUsableIconWithLabel(icon: Icons.mode_comment_outlined,label: "Comment",function: ()=>print("Comment"),),
                      ReUsableIconWithLabel(icon: MdiIcons.shareOutline,label: "Share",function: ()=>print("Share"),),
                    ],
                  ),
                  SizedBox(height: 8,),
                ],
              ),
            );
          }),
    );
  }
}
