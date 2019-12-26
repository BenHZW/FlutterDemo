import 'package:flutter/material.dart';
import 'package:navigatordemo/page1.dart';
import 'package:navigatordemo/page2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter路由',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Page1(title: "主页",),
      debugShowCheckedModeBanner: false,
      //routes: <String, WidgetBuilder>{'/page2': (context) => Page2()},
    );
  }
}
