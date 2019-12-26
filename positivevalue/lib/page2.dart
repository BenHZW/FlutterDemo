import 'package:flutter/material.dart';
import 'package:dynamictransfervalue/page1.dart';

class Page2 extends StatefulWidget {
  Page2({Key key,this.todo}) : super(key: key);

  final Todo todo;
  @override
  _MyPage2State createState() => _MyPage2State();
}

class _MyPage2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("${widget.todo.title}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("${widget.todo.description}"),
      ),
    );
  }
}