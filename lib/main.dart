import 'package:flutter/material.dart';
import 'package:myapp/views/home.dart';

void main(){
  runApp(MaterialApp(
    title: '导航示例',
    home: FirstScreen(),
  ));
}

class MyApp extends StatelessWidget {
//  final List<String> items;
//  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '练习Flutter',
      home: Scaffold(
        appBar: AppBar(title: new Text('测试测试a')),
        body: CardWidget(),
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

/*图片网格列表*/
class ImageGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        new Image.network('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg'),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/e1/fe/pond_brazil_blue_lagoon_water_landscape-1340028.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/ee/ae/fog_dam_water_cold_winter_s_o_paulo_paraibuna_landscape-1278660.jpg!d'),
        new Image.network('https://c.pxhere.com/photos/d1/e3/rio_river_pond_lake_water_nature_sunset_landscape-1224328.jpg!d'),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d')
      ],
    );
  }
}

/*网格列表*/
class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 0.7
      ),
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
      children: <Widget>[
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d',fit: BoxFit.cover,),
        new Image.network('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/e1/fe/pond_brazil_blue_lagoon_water_landscape-1340028.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/ee/ae/fog_dam_water_cold_winter_s_o_paulo_paraibuna_landscape-1278660.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/d1/e3/rio_river_pond_lake_water_nature_sunset_landscape-1224328.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d',fit: BoxFit.cover,),
        new Image.network('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/e1/fe/pond_brazil_blue_lagoon_water_landscape-1340028.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/ee/ae/fog_dam_water_cold_winter_s_o_paulo_paraibuna_landscape-1278660.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/photos/d1/e3/rio_river_pond_lake_water_nature_sunset_landscape-1224328.jpg!d',fit: BoxFit.cover,),
        new Image.network('https://c.pxhere.com/images/8f/04/15f4e99ba8b071b3ca061e602bda-1443939.jpg!d',fit: BoxFit.cover,)
      ],
    );
  }
}

/*水平方向布局*/
class  RowWidget  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: (){},
          color: Colors.redAccent,
          child: Text('红色按钮'),
        ),
        Expanded(child: RaisedButton(
          onPressed: (){},
          color: Colors.orangeAccent,
          child: Text('橙色按钮'),
        )),
        RaisedButton(
          onPressed: (){},
          color: Colors.greenAccent,
          child: Text('绿色按钮'),
        )
      ],
    );
  }
}

/*垂直布局*/
class  ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, // 副轴5设置
      mainAxisAlignment: MainAxisAlignment.end, // 主轴设置
      children: <Widget>[
        Text('第一个'),
        Expanded(child: Text('第二个第二个')),
        Text('第三个第三个第三个'),
        Text('第四个第四个第四个第四个'),
      ],
    );
  }
}

/*层叠布局*/
class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new  Stack(
      alignment: const FractionalOffset(0.5, 0.8), // 设置普通层叠位置
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg'),
          radius: 100.0, // 弧度
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent
          ),
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: Text('层叠文字'),
          height: 40.0,
        )
      ],
    );
    // TODO: implement build
    return Center(
      child: stack,
    );
  }
}

/*层叠定位布局*/
class StackPositionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new  Stack(
      alignment: const FractionalOffset(0.5, 0.8), // 设置普通层叠位置
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://seopic.699pic.com/photo/50057/4433.jpg_wh1200.jpg'),
          radius: 100.0, // 弧度
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Text('层叠定位布局'),
        ),
        Positioned(
          bottom: 10.0,
            right: 10.0,
            child: Text('层叠定位')
        )
      ],
    );
    // TODO: implement build
    return Center(
      child: stack,
    );
  }
}

/*卡片布局*/
class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = Card(
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
    );
    return card;
  }
}

/*导航*/
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('导航测试'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看详情列表'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Home()
              ));
            }
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('二级页面'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('返回',style: TextStyle(color: Colors.white),),
            color: Colors.deepPurpleAccent,
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}
