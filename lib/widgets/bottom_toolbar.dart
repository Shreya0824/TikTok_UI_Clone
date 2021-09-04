import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/tik_tok_icons_icons.dart';

class BottomToolbar extends StatelessWidget {
  const BottomToolbar({Key? key}) : super(key: key);

  Widget get customCreateIcon => Container(
      width: 45.0,
      height: 27.0,
      child: Stack(
          children:[
            Container(
                margin: EdgeInsets.only(left: 10.0),
                width: 38,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 45, 108),
                    borderRadius: BorderRadius.circular(7.0)
                )),

            Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 38,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 32, 211, 234),
                    borderRadius: BorderRadius.circular(7.0)
                )),
            Center(child:Container(
              height: double.infinity,
              width: 38,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)
              ),
              child: Icon(Icons.add, size: 20.0,),
            )),
          ]
      ));

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(TikTokIcons.home, color: Colors.white, size: 20),
        Icon(TikTokIcons.search,
            color: Colors.white, size: 20),
        customCreateIcon,
        Icon(TikTokIcons.messages,
            color: Colors.white, size: 20),
        Icon(TikTokIcons.profile,
            color: Colors.white, size: 20)]
    );
  }
}
