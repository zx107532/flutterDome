import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('人员列表'),
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text('四川省成都市', style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text('飞羽寻梦'),
                leading: Icon(Icons.airport_shuttle,color: Colors.lightBlueAccent,)
            ),
            Divider(color: Colors.deepOrange,),
            ListTile(
                title: Text('重庆市', style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text('飞羽寻梦',style: TextStyle(color: Colors.orange),),
                leading: Icon(Icons.airport_shuttle,color: Colors.lightBlueAccent,)
            ),
            Divider(color: Colors.red,),
            ListTile(
                title: Text('蜀国', style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text('飞羽寻梦'),
                leading: Icon(Icons.ac_unit,color: Colors.lightBlueAccent,)
            )
          ],
        ),
      ),
    );
  }
}