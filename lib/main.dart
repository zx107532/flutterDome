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
        body:Center(
          child: Container(
            height: 200.0,
            child: MyList()
          )
        )
      ),
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Image.network('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg'),
        new Container(
          width: 180.0,
          color: Colors.orange,
        ),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/e1/fe/pond_brazil_blue_lagoon_water_landscape-1340028.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/ee/ae/fog_dam_water_cold_winter_s_o_paulo_paraibuna_landscape-1278660.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/d1/e3/rio_river_pond_lake_water_nature_sunset_landscape-1224328.jpg!d')
      ],
    );
  }
}
