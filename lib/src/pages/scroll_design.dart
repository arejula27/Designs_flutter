import 'package:flutter/material.dart';


class ScrollDesign extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        body: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _page1(),
            _page2()
                      ],
                    ),
                  ),
                );
              }
            
  Widget _page1() {

    return Stack(
      children: <Widget>[
        _fondo(),
        _imgFondo(),
        _textos(),
      ],
      );


  }

  Widget _fondo(){
    return  Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(60,172,203,	 1.0),
        );

  }
  Widget _imgFondo(){

    return Container(
      height: double.infinity,
      width: double.infinity,

      child: Image(
        image: AssetImage("assets/img/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }
            

  Widget _textos(){

    final estilosText = TextStyle(color: Colors.white,fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text("11º C",style: estilosText,),
          Text("Miercoles",style: estilosText,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down,size: 70.0,color: Colors.white,)
        ],
      ),
    );
  }  
  Widget _page2() {

    return Stack(
      children: <Widget>[
        _fondo(),
        _boton(),
      ],
    );


  }
  Widget _boton(){
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        onPressed: (){},
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 20.0),
          child: Text("Bienvenidos",style: TextStyle(fontSize: 20.0),),
        ),
      )
      
    );
  }
}