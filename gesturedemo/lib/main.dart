import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureDetector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListenerPage(title: "GestureDetectorDemo"),
    );
  }
}

class ListenerPage extends StatefulWidget {
  ListenerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListenerPageState createState() => _ListenerPageState();
}

class _ListenerPageState extends State<ListenerPage> {

  String _showMessage = "未检测到的操作";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Listener(
        child: Container(alignment: Alignment.center,
        color: Colors.blue,
        width: 240.0,
        height: 120.0,
        child: Text(
          _showMessage,
          style: TextStyle(color: Colors.white),
        ),
        ),
        onPointerDown: (PointerDownEvent event) => _showEventText("onPointerDown"),
        onPointerMove: (PointerMoveEvent event) => _showEventText("onPointerMove"),
        onPointerUp: (PointerUpEvent event) => _showEventText("onPointerUp"),
        onPointerCancel: (PointerCancelEvent event) => _showEventText("onPointerCancel"),
      ),),
    );
  }

  void _showEventText(String text)
  {
    setState(() {
      _showMessage = text;
    });
    print(_showMessage);
  }

}
