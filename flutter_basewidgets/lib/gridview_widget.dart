import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          const Text('He\'d have you all unravel at the'),
          const Text('Heed not the rabble'),
          const Text('Sound of screams but the'),
          const Text('Who scream'),
          const Text('Revolution is coming...'),
          const Text('Revolution, they...'),
        ],
      ),
    );
  }
}
