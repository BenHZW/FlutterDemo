import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomScrollView',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
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

        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MyCustomScrollView"),
            ),
          ),

          //必须实现gridDelegate和delegate
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              //横向轴间距
              mainAxisSpacing: 10.0,
              //子元素间距
              crossAxisSpacing: 10.0,
              //子元素宽高比
              childAspectRatio: 4.0,
            ),

           delegate: SliverChildBuilderDelegate(
               (BuildContext context,int index){
                 return Container(
                   alignment: Alignment.center,
                   color: Colors.teal[100*(index%9)],
                   child: Text("grid item $index"),
                 );
               },
             childCount: 20,
           ),
          ),

          //必须实现itemExtent和delegate
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100*(index % 9)],
                    child: Text('list item $index'),
                  );
                }
            ),
          )
        ],
      )
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
