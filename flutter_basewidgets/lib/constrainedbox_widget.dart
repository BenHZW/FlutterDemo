import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          //设定约束子控件超过则无效
          minWidth: 100.0,
          minHeight: 100.0,
          maxWidth: 400.0,
          maxHeight: 400.0,
        ),
        child:  Container(
          width: 300.0,
          height: 300.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
