import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dado App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Dado'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  int _num=1;

void _incrementnum(){
  setState((){
    Random rnd;
    rnd=new Random();
    _num= 1 + rnd.nextInt(6);
  });
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              '$_num',
              style: Theme.of(context).textTheme.caption,
            ),

          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: _incrementnum,
       tooltip: 'increment',
       child: Icon(Icons.account_circle),
     ),
     //FloatingActionButton
     // This trailing comma makes auto-formatting nicer for build methods.
      //This trailing comma makes auto-formatting nicer for build methods.
      //  Scaffold
    );
  }
}
