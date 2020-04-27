import 'package:flutter/material.dart';

class ImgPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("img page"),
        ),
      body:Row(
        children: <Widget>[
         Image(
          image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
           height: 150.0,
           width: 200.0,
           fit: BoxFit.cover,
        ),
          Image(
          image: AssetImage("images/img.jpg"),
           height: 150.0,
          width: 100.0,
          fit: BoxFit.cover,
          )  
        ],
        
      ) 
    );
  }
}




