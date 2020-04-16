import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){

  runApp(new MyApp1());

}


//FIRST APP STATE LESS

class MyApp1 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return new MaterialApp(

      title: "MK App",

      home: new Scaffold(

        appBar: new AppBar(

          title: new Text("HOME PAGE"),
        ),

        body: new Center(child: new Text("Hello World")),

       ),
    );
  }
}

