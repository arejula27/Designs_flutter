import 'package:designs/src/pages/basic_design.dart';
import 'package:designs/src/pages/scroll_design.dart';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Design App',
      initialRoute: 'Scroll' ,
      
     routes:{
       'Basic': (BuildContext context)=>BassicDesign(),
       'Scroll':(BuildContext context)=>ScrollDesign(),
       
     } ,
    );
  }
}