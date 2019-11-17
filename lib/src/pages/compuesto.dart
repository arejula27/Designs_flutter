import 'dart:math';

import 'package:flutter/material.dart';

class CompuestoDesign extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _fondo(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulos(),
                  _botonesRedondeados(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _bottomNavBar(context),
      ),
    );
  }

  Widget _fondo() {

    final gradiente = Container(

      height: double.infinity,
      width:  double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52,54,101,1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        )
      ),
    );
    final cajaRosa = Transform.rotate(
          angle: -pi/5.0,
          child: Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:
          [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ] ,),
        borderRadius: BorderRadius.circular(50.0)
      ),

    ),
          
    );

    return Stack(
      children: <Widget>[
          gradiente,
          Positioned(child: cajaRosa,
          top: -100,
          ),
          
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: <Widget>[
            Text("Classify transaction",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
             SizedBox(height: 10.0,),
             Text("Classify this transaction into a particular category",style: TextStyle(color: Colors.white,fontSize: 18.0,),),

          ],
        ),
      ),
    );
  }

  Widget _bottomNavBar(BuildContext context){

    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )


      ),
      child: BottomNavigationBar(
          
          items: <BottomNavigationBarItem>[ 
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(Icons.calendar_today,size: 30.0,),
            ),
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(Icons.bubble_chart,size: 30.0,),
            ),
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(Icons.supervised_user_circle,size: 30.0,),
            )
          ],
        ),
    );


  }

  Widget _botonesRedondeados() {

    return Table(
children: [
  TableRow(
    children:[
      _crearBotonRedondeao(),
      _crearBotonRedondeao(),
    ] ),
    TableRow(
    children:[
      _crearBotonRedondeao(),
      _crearBotonRedondeao(),
    ] ),
    TableRow(
    children:[
      _crearBotonRedondeao(),
      _crearBotonRedondeao(),
    ] ),
    TableRow(
    children:[
      _crearBotonRedondeao(),
      _crearBotonRedondeao(),
    ] ),
],

    );

  }

  Widget _crearBotonRedondeao() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(62, 67, 107, 0.7)
      ) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 5.0,),
          CircleAvatar(
            radius: 35.0,
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.cached,color: Colors.white,size: 30.0,),
            
          ),
          Text("Cosa",style: TextStyle(color: Colors.pinkAccent),),
          SizedBox(height: 5.0,)
        ],
      ),
    );
  }
}