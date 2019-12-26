import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '跳转窗口title',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'DecorationDemo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(

      ),
      body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 60.0,left: 80.0),
            constraints: BoxConstraints.tightFor(width: 300.0,height: 150.0),
            //背景颜色
            //color: Colors.blueGrey,

            //装饰箱子
            decoration: BoxDecoration(
              border: Border.all(width: 3,color: Colors.red),
              //阴影效果
              boxShadow:[
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0)
              ],
              //渐变色
              gradient: LinearGradient(
                  colors:[Colors.red,Colors.blue,Colors.yellow]),
            ),
            //旋转角度
            transform: Matrix4.rotationZ(.3),
            alignment: Alignment.center,
            child: Text(
              "佩奇",
              style: TextStyle(color: Colors.white,fontSize: 30.0),
            ),
          )
      )
    );

  }
}
