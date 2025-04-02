import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  final List<String>myImages=[
    "assets/images/toy1.webp",
         "assets/images/toy2.jpeg",
        "assets/images/toy3.webp",
        "assets/images/toy4.webp",
        "assets/images/toy5.jpeg",
        "assets/images/toy6.webp",
        "assets/images/toy7.jpg",
        "assets/images/toy8.webp",
        "assets/images/toy9.jpeg",
        "assets/images/toy10.webp",

  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('item extent builder',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        body: ListView.builder(

          itemCount:myImages.length ,
            itemExtentBuilder:(index,dimensions){
            return (index % 2==0)?100:150;
            },
            itemBuilder: (context,index){
            return ListTile(
              contentPadding: EdgeInsets.all(10),
              title:Image.asset(myImages[index]),
            );

        }),
      ),
    );
  }
}