import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  //定义跳转规则
  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '登录Demo',
      //去除右上角debug
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        //定义主题颜色
        primarySwatch: Colors.lightBlue,
      ),
      //首页
      home: LoginPage(),
      //遵守跳转规则
      routes: routes,
    );
  }
}
