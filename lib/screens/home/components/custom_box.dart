import 'package:flutter/material.dart';

import '../../../costants.dart';
import 'detail_container.dart';


class CustomBox extends StatelessWidget {
  final String image;
  final String model;
  final String batteryAutonomy;
  final String kmAutonomy;

  const CustomBox({Key key, this.image, this.model, this.batteryAutonomy, this.kmAutonomy}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Material(
          color: kPrimaryLightColor,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: Colors.blue[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 300,
                height: 250,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(24.0),
                  child: Image(
                    fit: BoxFit.fill,
                    //image: NetworkImage(_image),
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DetailsContainer(model: model,batteryAutonomy: batteryAutonomy,kmAutonomy: kmAutonomy,),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
