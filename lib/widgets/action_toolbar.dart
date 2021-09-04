import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/tik_tok_icons_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActionToolbar extends StatelessWidget {
  const ActionToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(),
          _getSocialAction(title: '3.2m', icon: TikTokIcons.heart),
          _getSocialAction(title: '16.4k', icon: TikTokIcons.chat_bubble),
          _getSocialAction(title: 'Share', icon: TikTokIcons.reply,isShare: true),
          _getMusicPlayerAction()

        ],
      ),
    );
  }
  Widget _getSocialAction({
required String title, required IconData icon,
  bool isShare=false}){
    return Container(
      width: 60,
      height: 60,
      margin:EdgeInsets.only(top:10),
      child: Column(
        children: [Icon(icon,size: isShare? 25.0 : 35,color: Colors.grey,),
          Padding(
          padding: EdgeInsets.only(top: isShare ? 5.0 : 2.0),
          child:
          Text(title, style: TextStyle(fontSize: isShare ? 10.0 : 12.0)),
        )],

      ),
    );
  }

  Widget _getFollowAction(){
    return Container(
        width: 60,
        height: 60,
    child: Stack(
      children: [
        _getProfilePicture(),
        _getPlusIcon()
      ],
    ),);
  }

  Widget _getProfilePicture(){
    return Positioned(
        left: 5,
        child: Container(
      height:50 ,
      width: 50,
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: CachedNetworkImage(
        imageUrl: "https://www.seekpng.com/png/full/86-867828_femmes-illustration-girl-art-girl-drawings-girly-gerafik.png",
        fit: BoxFit.contain,
        placeholder: (context, url) => new CircularProgressIndicator(),
        errorWidget: (context, url, error) => new Icon(Icons.error),
      ),
    ));
  }
  Widget _getPlusIcon(){
    return Positioned(
        bottom: 0,
        left: 20,
        child: Container(
          width: 20,height: 20,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 43, 84),
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Icon(Icons.add, color: Colors.white, size: 20.0, )
    ));
  }
  LinearGradient get musicGradient => LinearGradient(
      colors: [
        Color(0xFF424242),
        Color(0xFF303030),
        Color(0xFF303030),
        Color(0xFF424242),
      ],
      stops: [0.2,0.4, 0.6,0.8],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight
  );

  Widget _getMusicPlayerAction() {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: 60,
        height: 60,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(50 / 2)
            ),
            child: CachedNetworkImage(
              imageUrl: "https://www.seekpng.com/png/full/86-867828_femmes-illustration-girl-art-girl-drawings-girly-gerafik.png",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          ),

        ]));
  }
}
