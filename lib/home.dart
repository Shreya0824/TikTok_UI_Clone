import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'widgets/video_desc.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {

  Widget get topSection =>   Container(
    height: 100.0,
    padding: EdgeInsets.only(bottom: 15.0),
    alignment: Alignment(0.0, 1.0),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Following'),
          Container(
            width: 15.0,
          ),
          Text('For you',
              style: TextStyle(
                  fontSize: 17.0, fontWeight: FontWeight.bold))
        ]),
  );

  Widget get middleSection => Expanded(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        VideoDesc(),
        ActionToolbar()
      ],

    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          topSection,
     Container(
       height: 700,
       child: Stack(
       children: [
         Positioned.fill(
             child: Align(
                 alignment: Alignment.center,
                 child:
                 Lottie.asset('assets/33172-01-finishig-studies.json',height: 600))),
        Positioned.fill(
        child: Align(
        alignment: Alignment.bottomRight,
        child:
         middleSection,)),

       ],
     ),),
          BottomToolbar(),
        ],
      ),
    );
  }
}
