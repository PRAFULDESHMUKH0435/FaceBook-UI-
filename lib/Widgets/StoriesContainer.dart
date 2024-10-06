import 'package:facebookui/data/data.dart';
import 'package:flutter/material.dart';
class StoriesContainer extends StatefulWidget {
  const StoriesContainer({super.key});

  @override
  State<StoriesContainer> createState() => _StoriesContainerState();
}

class _StoriesContainerState extends State<StoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context,index){
            final currentstory = stories[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.green,
                image:index==0?DecorationImage(image: NetworkImage(currentUser.imageUrl),fit: BoxFit.fill)
                    :DecorationImage(image: NetworkImage(currentstory.imageUrl),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(14.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5.0,left: 5.0),
                    child: CircleAvatar(
                      radius:15,
                      backgroundColor: Colors.white,
                      backgroundImage:index==0?NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ62WVAqWITHZgePkEyKS1zUl7LE2g8HytJA&s")  :NetworkImage(currentstory.user.imageUrl),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0,bottom: 5.0),
                      child: Text(index==0?"Add To Story":currentstory.user.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),))
                ],
              ),
            );
          }),
    );
  }
}
