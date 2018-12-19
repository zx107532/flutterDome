import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: new List<String>.generate(100, (i) => "Item $i")));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '练习Flutter',
      home: Scaffold(
        appBar: AppBar(title: new Text('测试测试a')),
        body: ListDynamic(item: items),
      ),
    );
  }
}

/*普通横向列表*/
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Image.network(
            'http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg'),
        new Container(
          width: 180.0,
          height: 200.0,
          color: Colors.orange,
        ),
        new Image.network(
            'https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d'),
        new Image.network(
            'https://c.pxhere.com/photos/e1/fe/pond_brazil_blue_lagoon_water_landscape-1340028.jpg!d'),
        new Image.network(
            'https://c.pxhere.com/photos/ee/ae/fog_dam_water_cold_winter_s_o_paulo_paraibuna_landscape-1278660.jpg!d'),
        new Image.network(
            'https://c.pxhere.com/photos/d1/e3/rio_river_pond_lake_water_nature_sunset_landscape-1224328.jpg!d')
      ],
    );
  }
}

/*动态列表*/
class ListDynamic extends StatelessWidget {
  final List<String> item;

//  ListDynamic({Key key, @required this.item}):super(key:key);
  ListDynamic({@required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
      itemCount: item.length,
      itemBuilder: (context, index) {
        return new ListTile(
          title: new Text('${item[index]}$index'),
        );
      },
    );
  }
}
