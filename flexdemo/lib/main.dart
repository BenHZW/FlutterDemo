import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flex"),
      ),
      body: Column(
        children: <Widget>[
          //Flex延展控件
          Container(
            height: 400.0,
            child: Flex(
              //设置方向缩放比例
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child:Container(
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ),
          //控件延展Row
          Container(
            height: 100.0,
            child: new Row(
              //两端对齐
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Container
                    (
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          )
        ],
      )
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
