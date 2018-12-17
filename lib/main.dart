import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: Center(
          child: Container(
            child: Text('测试测试测试测试测',style: TextStyle(fontSize: 40.0),),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
              ),
              border: Border.all(width: 2.0, color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}