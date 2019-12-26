import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTPClient',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'HTTPClient'),
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
  String _responseText = "";
  //get请求
  _getData() async{
    try{
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse("https://www.phei.com.cn"));
      HttpClientResponse response = await request.close();
      _responseText = await response.transform(Utf8Decoder()).join();
      print(_responseText);
      httpClient.close();
    }
    catch(_){
      print("请求异常: "+_.toString());
    }
  }

  //post请求

  _postData() async {
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request =
      await httpClient.postUrl(Uri.parse("https://www.phei.com.cn"));
      //设置请求头
      request.headers.set('content-type', 'application/json');
      Map jsonMap = {'userid': '10000'};
      request.add(utf8.encode(json.encode(jsonMap)));
      HttpClientResponse response = await request.close();
      _responseText = await response.transform(Utf8Decoder()).join();
      print(_responseText);
      httpClient.close();
    } catch (_) {
      print('请求异常：' + _.toString());
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('HttpClient的get请求'),
            onPressed: _getData,
          )
        ],
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
