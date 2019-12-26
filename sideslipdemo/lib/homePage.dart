import 'package:flutter/material.dart';
import './otherPage.dart';

class HomePage extends StatefulWidget {
  //HomePage({Key key, this.title}) : super(key: key);


//  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("QQ")),
        //抽屉控件
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("FlutterDeveloper"),
                accountEmail: Text("MadeBy-Benson"),
                currentAccountPicture: GestureDetector(
                    onTap: () => print("点击事件"),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://i.loli.net/2019/12/03/OL2FBt1SpYKbJRv.jpg"),
                    )
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://i.loli.net/2019/12/03/ojyKCnxth25l1bf.jpg")
                    )
                ),
              ),
               ListTile(
                  title: Text("MandyWu * 1"),
                  trailing: Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OtherPage("Love U One Time")));
                  }
              ),
              ListTile(
                  title: Text("MandyWu * 2"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext context) => OtherPage("Love U Two time")));
                  }
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: Center(
            child: Text("Confession", style: TextStyle(fontSize: 35.0),)
        )
    );
  }
}