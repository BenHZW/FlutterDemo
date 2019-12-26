import 'package:flutter/material.dart';
import 'package:dynamictransfervalue/page2.dart';
class Page1 extends StatefulWidget {
  Page1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyPage1State createState() => _MyPage1State();
}

class _MyPage1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("第一页"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            //跳转传值
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder:(context) => Page2(todo: todos[index])));
            },
          );
        },
      ),
    );
  }
}

class Todo{
  final String title;
  final String description;

  Todo(this.title,this.description);
}

final todos = List<Todo>.generate(20,
    (i) => Todo('Todo $i','A description of what needs to be done for Todo $i'),
);
