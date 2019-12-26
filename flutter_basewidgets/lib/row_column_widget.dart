import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  RowColumnWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ColumnState createState() => _ColumnState();
}

class _ColumnState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Column(
          // 从上到下
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              //字体中心对齐
              alignment: Alignment.center,
              child: Text("A",
                  style:  TextStyle(color: Colors.red, fontSize: 25.0)),
            ),

            //插入空列
            Spacer(
              flex: 1,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text("B",
                  style:  TextStyle(color: Colors.red, fontSize: 25.0)),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text("C",
                  style:  TextStyle(color: Colors.red, fontSize: 25.0)),
            ),
          ],
        ));
  }
}
