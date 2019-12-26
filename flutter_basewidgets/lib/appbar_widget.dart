import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本地优惠'),
        leading: IconButton(
            icon: Icon(Icons.face),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'tooltip1',
            onPressed: () {
              print("第一个播放按钮");
            },
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'tooltip2',
            onPressed: () {
              print("第二个播放按钮");
            },
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'tooltip3',
            onPressed: () {
              print("第三个播放按钮");
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          FlutterLogo(
            size: 100.0,
            colors: Colors.red,
          )
        ],
      ),
    );
  }
}
