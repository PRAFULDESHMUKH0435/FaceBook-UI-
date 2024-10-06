import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  final Mobile;
  final Tablet;
  final Desktop;
  Responsive({super.key, this.Mobile, this.Tablet, this.Desktop});

  static bool isMobile(BuildContext context){
    return MediaQuery.of(context).size.width<=800;
  }

  static bool isTablet(BuildContext context){
    return MediaQuery.of(context).size.width>=800 && MediaQuery.of(context).size.width<=1200;
  }

  static bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width>=1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<=800){
            return Mobile;
          }else if(constraints.maxWidth>=800 && constraints.maxWidth<=1200){
            return Tablet;
          }else{
            return Desktop;
          }
        });
  }
}
