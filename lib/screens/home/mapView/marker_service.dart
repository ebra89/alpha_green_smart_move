import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService{
  //Function press;
  //BitmapDescriptor icon;

  List<Marker> getMarkers(List<ElectricScooter> scooters,BitmapDescriptor icon){
     var markers = List<Marker>();



     scooters.forEach((scooter) {
       Marker marker = Marker(
         markerId: MarkerId(scooter.id),
         infoWindow: InfoWindow(title: "Click Me"),
         position: LatLng(scooter.lat,scooter.lon),
         icon: icon,
         //icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(), "assets/images/scooter_icon6.png"),
         //onTap: press,
       );
       markers.add(marker);
     });
     return markers;
  }
}