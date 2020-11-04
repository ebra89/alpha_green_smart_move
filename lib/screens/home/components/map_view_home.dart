import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:alpha_green_smart_move/screens/home/mapView/map_view.dart';
import 'package:alpha_green_smart_move/services/electric_scooter_service.dart';
import 'package:alpha_green_smart_move/services/geolocator_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class MapViewHome extends StatelessWidget {
  final locatorService = GeoLocatorService();
  final scootersService = ElectricScooterService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiProvider(
        providers: [
          FutureProvider(create: (context)=> locatorService.getLocation()),
          FutureProvider(create: (context){
            ImageConfiguration configuration = createLocalImageConfiguration(context);
            return BitmapDescriptor.fromAssetImage(configuration, "assets/images/scooter_icon6.png");
          }),
          ProxyProvider2<Position,BitmapDescriptor,Future<List<ElectricScooter>>>(
            update: (context,position,icon,scooters){
              return scootersService.getElectricScooters();
            },
          )
        ],
        child: MapView(),
      ),
    );
  }
}


