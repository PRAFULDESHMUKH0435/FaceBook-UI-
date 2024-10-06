import 'package:facebookui/Widgets/CircleButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import '../Constants/Colors.dart';
import '../Widgets/CreatePostContainer.dart';
import '../Widgets/CreateRoomContainer.dart';
import '../Widgets/StoriesContainer.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          /// AppBar
          SliverAppBar(
            title: Text("facebook",style: AppStyle.AppBarNameStyle),
            centerTitle: false,
            floating: true,
            backgroundColor: Colors.white,
            actions: [
              CircleButtton(icon: Icons.search, iconsize: 30, onPresseed: ()=>print("Search")),
              CircleButtton(icon: MdiIcons.facebookMessenger, iconsize: 30, onPresseed: ()=>print("Messanger")),
            ],
          ),

          /// CurrentUserContainer
          SliverToBoxAdapter(
              child: CreatePostContainer()),

          /// CreateRoomContainer
          SliverToBoxAdapter(
            child: CreateRoomContainer(),
          ),

          /// Stories Section
          SliverToBoxAdapter(
            child: StoriesContainer(),
          )
        ],
      ),
    );
  }
}
