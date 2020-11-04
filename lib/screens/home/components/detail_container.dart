import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final String model;
  final String batteryAutonomy;
  final String kmAutonomy;

  const DetailsContainer({Key key, this.model, this.batteryAutonomy, this.kmAutonomy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Text(model, style:
            TextStyle(
              color: Colors.deepPurple,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Container(
          child: Text(
            kmAutonomy,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.battery_std_sharp,
                  color: Colors.grey,
                  size: 15.0,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                child: Text(
                  batteryAutonomy,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


