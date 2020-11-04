import 'package:flutter/material.dart';

import '../../../costants.dart';


class CardItem extends StatelessWidget {

  final String text;
  final String date;
  final IconData icon;
  final Function press;

  const CardItem({Key key, this.text, this.date, this.icon, this.press}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 21),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: press,
                icon: Icon(icon, size: 40,color: kPrimaryColor,),
              ),
              SizedBox(width: 14,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(text,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 20,),
                  Text(date,style: TextStyle(fontSize: 13,color: kPrimaryColor),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

