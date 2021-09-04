import 'package:flutter/material.dart';

class VideoDesc extends StatelessWidget {
  const VideoDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    Container(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('@firstjonny', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Video title and some other stuff'),
            Row(children: [
              Icon(Icons.music_note,  size: 15.0, color: Colors.white,),
              Text('Artist name - Album name - song', style: TextStyle(fontSize: 12.0))]),
          ],
        ),
      ),
    )
    );
  }
}
