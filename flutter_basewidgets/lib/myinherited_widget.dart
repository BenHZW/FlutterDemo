import 'package:flutter/material.dart';

class Item {
  String reference;

  Item(this.reference);
}

//InheritedWidget支持夸级传递数据，_MyInherited为实例变量，其中widget必须是InheritedWidge子类才有传递性
class _MyInherited extends InheritedWidget {
  _MyInherited({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  final MyInheritedWidgetState data;

  @override
  //更新通知
  bool updateShouldNotify(_MyInherited oldWidget) {
    return true;
  }
}

class MyInheritedWidget extends StatefulWidget {
  MyInheritedWidget({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  MyInheritedWidgetState createState() => MyInheritedWidgetState();

  //重建机制
  static MyInheritedWidgetState of(
      [BuildContext context, bool rebuild = true]) {
    return (rebuild
            ? context.inheritFromWidgetOfExactType(_MyInherited) as _MyInherited
            : context.ancestorWidgetOfExactType(_MyInherited) as _MyInherited)
        .data;
  }
}

class MyInheritedWidgetState extends State<MyInheritedWidget> {
  List<Item> _items = <Item>[];

  int get itemsCount => _items.length;

  void addItem(String reference) {
    setState(() {
      _items.add(Item(reference));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  _MyInherited(
      data: this,
      child: widget.child,
    );
  }
}

class MyTree extends StatefulWidget {
  @override
  _MyTreeState createState() =>_MyTreeState();
}

class _MyTreeState extends State<MyTree> {
  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Column(
          children: <Widget>[
            WidgetA(),
            Container(
              child:  Row(
                children: <Widget>[
                   Icon(Icons.shopping_cart),
                   WidgetB(),
                   WidgetC(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context, false);  // 防止WidgetA被rebuild
    return  Container(
      child:  RaisedButton(
        child:  Text('Add Item'),
        onPressed: () {
          state.addItem(' item');
        },
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context);
    return  Text('${state.itemsCount}');
  }
}

class WidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Text('I am Widget C');
  }
}
