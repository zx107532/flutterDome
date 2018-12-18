import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '练习Flutter',
      home: Scaffold(
        appBar: AppBar(title: new Text('测试测试a')),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.airplay),
              title: new Text('电脑'),
            ),
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text('雪花'),
            ),
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text('雪花'),
            )
          ],
        ),
      ),
    );
  }
}