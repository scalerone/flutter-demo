import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("hello page"),
        ),
      body:Center(child: Text(
        "Hello world"*3,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.green
        ),
      ),) 
    );
  }
}




