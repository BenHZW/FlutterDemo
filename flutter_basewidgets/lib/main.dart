import 'package:flutter/material.dart';
import 'package:flutter_widgets/appbar_widget.dart';
import 'package:flutter_widgets/baseline_widget.dart';
import 'package:flutter_widgets/button_widget.dart';
import 'package:flutter_widgets/constrainedbox_widget.dart';
import 'package:flutter_widgets/container_widget.dart';
import 'package:flutter_widgets/customscrollview_widget.dart';
import 'package:flutter_widgets/fittedbox_widget.dart';
import 'package:flutter_widgets/fractionallysizedbox_widget.dart';
import 'package:flutter_widgets/gridview_widget.dart';
import 'package:flutter_widgets/listview_widget.dart';
import 'package:flutter_widgets/myinherited_widget.dart';
import 'package:flutter_widgets/text_image_icon_widget.dart';
import 'package:flutter_widgets/widget_page.dart';
import 'package:flutter_widgets/flex_widget.dart';
import 'package:flutter_widgets/row_column_widget.dart';
import 'package:flutter_widgets/wrap_widget.dart';

import 'alertdialog_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '多任务管理器title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:<String, WidgetBuilder> {
        '/Container': (context) => ContainerWidget(),
        '/ConstrainedBox': (context) => ConstrainedBoxWidget(),
        '/FittedBox': (context) => FittedBoxWidget(),
        '/FractionallySizedBox': (context) => FractionallySizedBoxWidget(),
        '/Baseline': (context) => BaselineWidget(),
        '/TextImageIcon': (context) => TextImageIconWidget(),
        '/Button': (context) => ButtonWidget(),
        '/Flex': (context) => FlexWidget(),
        '/Wrap': (context) => WrapWidget(),
        '/Row Column': (context) => RowColumnWidget(),
        '/AppBar': (context) => AppBarWidget(),
        '/ListView': (context) => ListViewWidget(),
        '/CustomScrollView': (context) => CustomScrollViewWidget(),
        '/GridView': (context) => GridViewWidget(),
        '/InheritedWidget': (context) => MyTree(),
        '/AlertDialogWidget': (context) => AlertDialogWidget()
      },
      home: FlutterWidgetPage(title: 'Flutter组件Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}
