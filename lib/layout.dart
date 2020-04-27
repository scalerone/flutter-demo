import 'package:flutter/material.dart';

class Layout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout page"),
        ),
      body:
      Center(child: 
      Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Container(
          color: Colors.blue,
           width: 200,
           height: 200,
           child: Align(
             alignment: Alignment.bottomCenter,
             child:   Text(
             "Hello Align ",
              style:TextStyle(fontSize: 20,color: Colors.white)
           ), 
             ) 
        ),
        Container(
          color: Colors.blue,
           width: 200,
           height: 200,
           margin: EdgeInsets.fromLTRB(0,10,0, 0),
           child: Stack(
              children: <Widget>[
                  Image.network("https://ossweb-img.qq.com/upload/adw/image/20191022/627bdf586e0de8a29d5a48b86700a790.jpeg"),
                  Positioned(
                    top: 20,
                    right: 10,
                    child:Image.asset("images/img.jpg",width:100,)
                  )
              ],
            )
        ),
        ],
      
       ) 
      ,)
      
    );
  }
}




