import 'package:flutter/material.dart';


class BassicDesign extends StatelessWidget {
 
  

  @override
  Widget build(BuildContext context) {
   
    return Container(
      child: Scaffold(
        /*appBar: AppBar(
          title: Text("Basic"),
        ),*/
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                Image(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://mymodernmet.com/wp/wp-content/uploads/2019/02/rafal-nebelski-arctic-landscape-photography-1.jpg"),),
                _titleSection(),
                _buttonSection(context),
                _creatText(),
                _creatText(),
                _creatText(),
                _creatText(),
                _creatText(),
                _creatText(),
                _creatText(),
                _creatText(),
            ],
          ),
        )
        
      ),
    );
  }

  Widget _titleSection (){
  return SafeArea(
    child: Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*
          Putting a Column inside an Expanded widget stretches the column
           to use all remaining free space in the row. Setting the crossAxisAlignment 
           property to CrossAxisAlignment.start positions the column at the start of the row.
           */
          child: Column(
            //pegado a la izquierda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*
              Putting the first row of text inside a Container 
              enables you to add padding. The second child in the Column, 
              also text, displays as grey.
              */
              Container(
                //separa el item bajo suyo
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*
        The last two items in the title row are a star icon, 
        painted red, and the text “41”. The entire row is in a 
        Container and padded along each edge by 32 pixels.
        */
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
      ),
    ),
  );
  }

  

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buttonSection(context) {
     Color _color = Theme.of(context).primaryColor;

      return Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(_color, Icons.call, 'CALL'),
      _buildButtonColumn(_color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(_color, Icons.share, 'SHARE'),
    ],
  ),
);
  }
  Widget _creatText(){
    return SafeArea(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Text(
        "With their small populations and “beautiful emptiness,” these regions offer a perfect environment for Nebelski. In these idyllic locations, he can escape the hustle and bustle of modern life and “regain balance, calm and space to plan the perfect frame.” As a result, he is able to produce photographs that channel this contemplative context.",
      textAlign: TextAlign.justify,
      ),
      ),
    );

  }


}