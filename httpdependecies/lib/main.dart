import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Http());

class Http extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Http',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HttpRequestPage(title: 'Http'),
    );
  }
}

class HttpRequestPage extends StatefulWidget {
  HttpRequestPage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _HttpRequestState createState() => _HttpRequestState();

}

class _HttpRequestState extends State<HttpRequestPage> {
  //get请求
  _getData() async{
    var client = http.Client();
    var uri = Uri.parse("https://www.phei.com.cn");
    http.Response response = await client.get(uri);
    print(utf8.decode(response.bodyBytes));
    client.close();
  }

  //post请求
  _postData() async{
    var client = http.Client();
    Map<String,String> headerMap = {"userid":"10000"};
    http.Response response =await client.post("https://www.phei.com.cn",headers: headerMap,body: {});
    print(utf8.decode(response.bodyBytes));
    client.close();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Http的post请求'),
          onPressed: _postData,
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
