import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocalStorage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'LocalStorageDemo'),
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

  int _count = 0;
  @override

  void initState(){
    super.initState();
    _getCounter();
  }

  //获取当前数据
  _getCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //如果是空就变为0
      _count = prefs.get('counter') ?? 0;
    });
  }

  //储存当前变化的数据
  void _incrementCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //获取当前数据然后+1
    int counter = (prefs.getInt("counter") ?? 0) + 1;
    setState(() {
      _count = counter;
    });
    await prefs.setInt('counter', counter);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点击次数：" +_count.toString(),style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void_incrementCounter() async{
    
  }
}
