import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){

  runApp(new MyApp2());

}
/*

FIRST APP STATE LESS

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
*/



// SECOND APP STATE FULL

class MyApp2 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return new MaterialApp(

      title: "MK App",

      home: new HomePage(),

      theme: new ThemeData(

        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.orange


      ),
        
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {

  String mytext = "Nameste Duneya";

  void _changeText(){

    setState(() {
      if(mytext.startsWith("N")) {
        mytext = "Aapka MK11 Ke Duneya Me swaget Hai!!!";
       }

      else{
        mytext = "Nameste Duneya";
      }
    });

  }


  Widget _bodyWidget(){

    return new Container(

      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(
              fontSize: 22.0,
            ),),
          
          ],
        ),
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Home Page"),
      ),
      
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.touch_app),
        onPressed: _changeText,
      ),
    );
  }
}



