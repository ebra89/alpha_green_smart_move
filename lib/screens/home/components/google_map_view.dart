
import 'dart:collection';

import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:alpha_green_smart_move/screens/home/mapView/marker_service.dart';
import 'package:alpha_green_smart_move/services/electric_scooter_service.dart';
import 'package:alpha_green_smart_move/services/geolocator_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class GoogleMapView extends StatefulWidget {
  @override
  _GoogleMapViewState createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  GoogleMapController _controller;
  BitmapDescriptor markerIcon;
  Position currentLocation;
  List<ElectricScooter> scooters;
  ElectricScooterService scooterService = ElectricScooterService();
  MarkerService markerService = MarkerService();
  GeoLocatorService locatorService = GeoLocatorService();
  Set<Marker> markers = HashSet<Marker>();

  void mapCreated(GoogleMapController controller){
    _controller = controller;
    setState(() {
      getMarkers();
    });
  }

  Future <List<ElectricScooter>> getMarkers() async{
    markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), "assets/images/scooter_icon6.png");
    scooters = await scooterService.getElectricScooters();
    markers.addAll(markerService.getMarkers(scooters,markerIcon));
    print(markers.length);
  }




  @override
  void initState() {
    getMarkers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //create: (context) => scooterService.getElectricScooters(_markerIcon),

    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => scooterService.getElectricScooters()),
        FutureProvider(create: (context)=> locatorService.getLocation()),
      ],
        //create: (context) => scooterService.getElectricScooters(),
        child: Stack(
            children: <Widget>[
              _googleMapWidget(context),

            ],
        ),
    );
  }

  Widget _googleMapWidget(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(45.427611, 10.986344),
          zoom: 14,
        ),
        onMapCreated: mapCreated,
        markers: markers,

      ),
    );
  }


}
