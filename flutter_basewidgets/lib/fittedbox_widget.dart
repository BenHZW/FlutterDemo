import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //缩放到父视图大小就停止缩放
                  fit: BoxFit.contain,

                  alignment: Alignment.topLeft,
                  child: Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.contain",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //根据父视图高度宽度按比例缩放
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                  child:  Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.cover",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //完整显示
                  fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                  child:  Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fill",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //缩小
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topLeft,
                  child:  Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.scaleDown",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //根据父视图高度放大
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                  child:  Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fitHeight",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child:  FittedBox(
                  //根据父视图宽度放大
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft,
                  child:  Container(
                    color: Colors.yellow,
                    child:  Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fitWidth",
                style:  TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
