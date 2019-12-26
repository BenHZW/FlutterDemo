import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baseline"),
      ),
      body:  Row(
        //控件中心水平线对齐
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
           Baseline(
            baseline: 200.0,
            baselineType: TextBaseline.alphabetic,
            child:  Text(
              '今天天气真好',
              style:  TextStyle(
                fontSize: 20.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          Baseline(
            baseline: 200.0,
            baselineType: TextBaseline.alphabetic,
            child:  Text(
              '适合晨练',
              style:  TextStyle(
                fontSize: 30.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
           Baseline(
            baseline: 200.0,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}
