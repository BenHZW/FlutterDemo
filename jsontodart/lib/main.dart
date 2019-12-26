import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JsonToDart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HttpDemo(title: "JsonToDartDemo",),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<Post> fetchPost() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}


class HttpDemo extends StatefulWidget {
  HttpDemo({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HttpDemoState createState() => new _HttpDemoState(post: fetchPost());
}

class _HttpDemoState extends State<HttpDemo> {
  final Future<Post> post;

  _HttpDemoState({Key key, this.post});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
            child: FutureBuilder<Post>(
              future: post,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.body);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // By default, show a loading spinner
                return CircularProgressIndicator();
              },
            )));
  }
}


