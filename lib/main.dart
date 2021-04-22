import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dice App'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/newbackground.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Expanded(child: Image.asset('assets/dicelogo.png',),),


             Row(
                 children: <Widget>[
               Expanded(child: Image.asset('assets/dice$leftDiceNumber.png',),),
               Expanded(child: Image.asset('assets/dice$rightDiceNumber.png',),),
              ]
              ),
                Flexible(child: RaisedButton(color:Colors.red[900],onPressed: (){
                  changeDiceFace();
                },
                    child: Text('Roll', style: TextStyle(fontSize:20,color: Colors.white, fontFamily: 'Lobster'),),

                ),
                ),

              ],


            )
        )


    );


  }
}








