import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('item extent builder',style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.purple,),
      ),
    );
  }
}