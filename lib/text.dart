import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("text page"),
        ),
      body:Center(child: Text(
        "Hello world",
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.green
        ),
      ),) 
    );
  }
}




