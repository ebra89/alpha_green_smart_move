
import 'dart:convert';


List<ElectricScooter> scootersFromJson(String str) => List<ElectricScooter>.from(json.decode(str).map((x) => ElectricScooter.fromMap(x)));

class ElectricScooter{
  final String id;
  final String kmBattery;
  final String percentBattery;
  final double lat;
  final double lon;
  //final BitmapDescriptor icon;

  ElectricScooter({
    this.id,
    this.kmBattery,
    this.percentBattery,
    this.lat,
    this.lon,
    //this.icon
  });

  factory ElectricScooter.fromMap(Map<String,dynamic> json,) => ElectricScooter(
      id : (json['id'] != null) ? json['id'].toString() : null,
      kmBattery : (json['kmAutonomy'] != null) ? json['kmAutonomy'].toString() : null,
      percentBattery : (json['batteryAutonomy'] != null) ? json['batteryAutonomy'].toString() : null,
      lat : (json['latitude'] != null) ? json['latitude'].toDouble() : null,
      lon : (json['longitude'] != null) ? json['longitude'].toDouble() : null,
      //icon : icon,
  );

  /*
  ElectricScooter.fromJson(Map<String,dynamic> parsedJson,BitmapDescriptor icon):
        id = (parsedJson['id'] != null) ? parsedJson['id'].toString() : null,
        kmBattery = (parsedJson['kmAutonomy'] != null) ? parsedJson['kmAutonomy'].toString() : null,
        percentBattery = (parsedJson['batteryAutonomy'] != null) ? parsedJson['batteryAutonomy'].toString() : null,
        lat = (parsedJson['latitude'] != null) ? parsedJson['latitude'].toDouble() : null,
        lon = (parsedJson['longitude'] != null) ? parsedJson['longitude'].toDouble() : null,
        icon = icon;
*/
}