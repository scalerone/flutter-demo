import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];
    var data = [
      {"id":1,"title":"测试数据AAA","subtitle":"ASDFASDFASDF"},
      {"id":2,"title":"测试数据bbb","subtitle":"ASDFASDFASDF"},
      {"id":3,"title":"测试数据ccc","subtitle":"ASDFASDFASDF"},
      {"id":4,"title":"测试数据eee","subtitle":"ASDFASDFASDF"},
    ];
       //根据Demo数据，构造列表ListTile组件list
    for (var item in data ) {
    
      list.add( ListTile( 
          title: Text(item["title"],style: TextStyle(fontSize: 18.0) ),
          subtitle: Text(item["subtitle"]),
          leading:  Icon( Icons.fastfood, color:Colors.orange ),
          trailing: Icon(Icons.keyboard_arrow_right)
      ));
    }
  //    List l1 = ['a', 'b', 'c', 'd'];
  // for(int i=0; i<l1.length; i++) {
  //   print('now is ${i} -- ${l1[i]}');
  // }

    return Scaffold(
      appBar: AppBar(
        title: Text('list page'),
      ),
       body: Center(
        child: ListView(
          children: list,
        )
      ),
    );

  
  }
}