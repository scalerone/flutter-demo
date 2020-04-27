import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'list.dart';
import 'page2.dart';
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
                  child: Text('click to page2'),
                  onPressed: (){
                    Navigator.pushNamed(context, "Page2");
                  }
                  ,),
                RaisedButton(
                  child: Text('click to ListPage'),
                  onPressed: (){
                    Navigator.pushNamed(context, "ListPage");
                  }
                  ,)
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

