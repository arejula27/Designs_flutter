import 'package:designs/src/pages/basic_design.dart';
import 'package:designs/src/pages/compuesto.dart';
import 'package:designs/src/pages/scroll_design.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //bateria y wifi en blanco
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith (
      statusBarColor: Colors.white
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Design App',
      initialRoute: 'Compuesto' ,
      
     routes:{
       'Basic': (BuildContext context)=>BassicDesign(),
       'Scroll':(BuildContext context)=>ScrollDesign(),
       'Compuesto':(BuildContext context)=>CompuestoDesign(),
       
     } ,
    );
  }
}