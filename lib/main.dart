import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'list.dart';
import 'page2.dart';
import 'detailpage.dart';
import 'btn.dart';
import 'contain.dart';
import 'img.dart';
import 'layout.dart';
import 'flex.dart';
import 'input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //路由表定义
      routes: {
        "ListPage":(context)=> ListPage(),
        "Page2":(context)=> TextPage(),
        "DetailPage":(context)=> DetailPage(), //增加详情页的路由配置
        "btn":(context)=> new ButtonPage(),
        "con":(context)=> new ContainerPage(),
        "img":(context)=> new ImgPage(),
        "layout":(context)=> new Layout(),
        "flex":(context)=>  FlexPage(),
        "input":(context)=>  InputPage(),
      },
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget{
   @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
     var msg="Hello World"; //msg默认文字
     int _counter = 0;
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                        title: Text("我是Title"),
                      ),
            body:Center(child: Column(
              children: <Widget>[
                Text(msg),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      // _counter++;
                      // this.msg = 'click times '+'$_counter';
                      Navigator.push(context, MaterialPageRoute(builder:(context) {
                                return  ListPage();
                       }));


                    });
                  },
                  child: Text(
                    "click me",
                    style: TextStyle(fontSize: 14.0),
                  
                  ),
                ),
                RaisedButton(
                  child: Text('click to textpage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "Page2");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to ListPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "ListPage");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to ButtonPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "btn");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to ContainerPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "con");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to ImgPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "img");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to Layout'),
                  onPressed: (){
                    Navigator.pushNamed(context, "layout");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to flex'),
                  onPressed: (){
                    Navigator.pushNamed(context, "flex");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to InputPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "input");
                  }
                  ,),
              ],),
              )
        );
      }

}
// class MyHomePage extends StatelessWidget {
  
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("wo shi title"),
//         ),
//         body: Center(child: Text('Hello world')),
//     );
//   }
// }

