
import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService{

  List<Marker> getMarkers(List<ElectricScooter> scooters){
    var markers = List<Marker>();

    scooters.forEach((scooter) {
      Marker marker = Marker(
        markerId: MarkerId(scooter.id),
        draggable: false,
        //icon: scooter.icon,
        infoWindow: InfoWindow(title: "click here"),
        position: LatLng(scooter.lat, scooter.lon),
      );
      markers.add(marker);
    });
    return markers;

  }
}