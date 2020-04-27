import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ContainerPage'),),
      body: Center(
        child:Container(
          color: Colors.blue,
           width: 200,
           height: 200,
           child: Text("Hello Container ",style:TextStyle(fontSize: 20,color: Colors.white)),

        )
      
      ,),
    );
  }
}