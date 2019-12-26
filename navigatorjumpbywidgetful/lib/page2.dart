import 'package:flutter/material.dart';
import 'package:navigatordemo/page1.dart';

class Page2 extends StatefulWidget {
  Page2({Key key, this.title, this.informationChanges}) : super(key: key);

  final String title;
  final Information informationChanges ;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    //获取传过来的user

    print(widget.informationChanges.information1);
    return Scaffold(
      appBar: AppBar(

        title: Text('Second'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回第一个页面"),
          onPressed: (){
          Navigator.of(context).pop();
          }
          ),
        ),
      );
  }
}

