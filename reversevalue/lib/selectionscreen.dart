import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  SelectionScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyPage1State createState() => _MyPage1State();
}

class _MyPage1State extends State<SelectionScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("请选择你要回传的参数"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
               padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: (){
                Navigator.pop(context,"参数A");

              },
                child: Text("参数A"),
              ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context,"参数B");
                },
                child: Text("参数B"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context,"参数C");
                },
                child: Text("参数C"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}