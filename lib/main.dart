import 'package:flutter/material.dart';
import 'package:vegetable_shop/pages/HommPage.dart';
import 'package:vegetable_shop/pages/ItemPage.dart';
import 'package:vegetable_shop/pages/WelcomeScreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Welcomescreen(),
        "HomePage" : (context) => Homepage(),
        "ItemPage" : (context) => Itempage(),
      },
    );
  }
}