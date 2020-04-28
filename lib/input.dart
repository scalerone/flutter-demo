import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //定义一个controller
TextEditingController _unameController = TextEditingController();
TextEditingController _pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(title: Text('InputPage'),),
          body: Column(
          children: <Widget>[
          TextField(
            autofocus: true,
            controller: _unameController, //设置controller
            decoration: InputDecoration(
                
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            controller: _pwdController, //设置controller
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
          SizedBox(
            width: double.infinity,
            child:RaisedButton(
                        child: Text('登录'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                            print(_unameController.text);
                            print(_pwdController.text);
                        },
                      )
          ),
         
        ],
) ,
    );
    
  
  }
}