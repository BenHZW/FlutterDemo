import 'package:flutter/material.dart';
import 'package:dynamictransfervalue/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TransfervalueDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(title: 'TransfervalueDemo'),
      debugShowCheckedModeBanner: false,
    );
  }
}


