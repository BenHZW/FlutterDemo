import 'package:flutter/material.dart';
import 'package:navigatordemo/page2.dart';


class Page1 extends StatefulWidget {
  Page1({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState1 createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<Page1> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: Text("First"),
      ),
      body: Center(
            child: GestureDetector(onTap: (){
              Information changes = Information("信息1", "信息2");
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(informationChanges:changes)));
              },child: Text("跳转到第二个页面"),)
          )
      );
  }


}

class Information{
  final String information1;
  final String information2;
  Information(this.information1,this.information2);
}

