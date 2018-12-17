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
            child: new Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYQcP4HU0dTriNDBsI7W0GfcJLQcZRpTjzy7PQ8TQnr21qmh_',
              fit:BoxFit.contain,
              color: Colors.lightGreen,
              colorBlendMode: BlendMode.colorBurn,
              repeat: ImageRepeat.noRepeat,
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}