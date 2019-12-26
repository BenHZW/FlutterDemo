import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget{

  Widget _buildPage(int index,Color color){
    return Container(
      alignment: AlignmentDirectional.center,
      color: color,
      child: Text(
        "$index",style: TextStyle(fontSize: 150.0,color: Colors.white),
      ),
    );
  }

  Widget _buildPageView(){
    return PageView(
      children: <Widget>[
        _buildPage(1, Colors.green),
        _buildPage(2, Colors.blue),
        _buildPage(3, Colors.indigo),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),
      body: _buildPageView(),
    );
  }

}