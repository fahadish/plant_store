import 'package:flutter/material.dart';
import 'package:plant_store/Core/style.dart';
import 'package:plant_store/home_page.dart';
//import 'package:plant_store/home_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Plants App',
      theme: Styles.themeData(),
      home: const HomePage(),
    );
  }
}

