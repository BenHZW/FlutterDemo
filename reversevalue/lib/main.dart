import 'package:flutter/material.dart';
import 'selectionscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReverseValue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ReverseValueDemo'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("参数回传"),
      ),
      body: Center(child: SelectionButton(),),
    );
  }
}

class SelectionButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelection(context);
      },
      child: Text("请选择回传参数"),
    );

  }
}

_navigateAndDisplaySelection(BuildContext context) async{
  final result = await Navigator.push(context,
    MaterialPageRoute(builder: (context) => SelectionScreen())
  );
  //Scaffold.of(context).removeCurrentSnackBar()\
  print("${result}");
  Scaffold.of(context)
  ..removeCurrentSnackBar()
  ..showSnackBar(SnackBar(content: Text("$result")));
}
