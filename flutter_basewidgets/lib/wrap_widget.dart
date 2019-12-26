import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  WrapWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wrap"),
        ),
        body: Column(
          children: <Widget>[
            Wrap(
              //左右外边距
              spacing: 4.0,
              //上下外边距
              runSpacing: 4.0,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
              ],
            )
          ],
        ));
  }
}
