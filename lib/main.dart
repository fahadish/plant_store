import 'package:flutter/material.dart';
import 'package:plant_store/Core/style.dart';
import 'package:plant_store/data/plant.dart';
import 'package:plant_store/home_page.dart';
//import 'package:plant_store/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Plants App',
      theme: Styles.themeData(),
      home: HomePage(),
    );
  }
}

