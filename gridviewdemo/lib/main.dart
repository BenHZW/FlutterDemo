import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridViewDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
      debugShowCheckedModeBanner: false,
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridView(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent/*SliverGridDelegateWithFixedCrossAxisCount根据多少判断4属性*/(
          maxCrossAxisExtent: 170.0, // 最大副轴长度
          childAspectRatio: 2.0, //子元素宽高比
        ),
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Icon(Icons.ac_unit),
          ),
          Container(
            color: Colors.yellow,
            child: Icon(Icons.airport_shuttle),
          ),
          Container(
            color: Colors.red,
            child: Icon(Icons.all_inclusive),
          ),
          Container(
            color: Colors.grey,
            child: Icon(Icons.beach_access),
          ),
          Container(
            color: Colors.blueAccent,
            child: Icon(Icons.cake),
          ),
          Container(
            color: Colors.deepOrange,
            child: Icon(Icons.free_breakfast),
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
