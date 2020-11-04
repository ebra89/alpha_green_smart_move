import 'dart:async';
import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:alpha_green_smart_move/screens/home/components/build_container.dart';
import 'package:alpha_green_smart_move/services/geolocator_service.dart';
import 'package:alpha_green_smart_move/services/marker_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';




class MapView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);
    final scooterProvider = Provider.of<Future<List<ElectricScooter>>>(context);
    final geoService = GeoLocatorService();
    final markerService = MarkerService();
    return FutureProvider(
      create: (context) => scooterProvider,
      child: Scaffold(
        body: (currentPosition != null) ? Consumer<List<ElectricScooter>>(
          builder: (_, scooters, __){
            var markers = (scooters != null) ? markerService.getMarkers(scooters) : List<Marker>();
            return (scooters != null) ? Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        currentPosition.latitude,currentPosition.longitude
                      ),
                      zoom: 14,
                    ),
                    zoomGesturesEnabled: true,
                    markers: Set<Marker>.of(markers),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                    itemCount: scooters.length,
                    itemBuilder: (context,index){
                      return FutureProvider(
                          create: (context) => geoService.getDistance(currentPosition.latitude,currentPosition.longitude, scooters[index].lat,scooters[index].lon),
                        child: Card(
                          child: ListTile(
                            title: Text(scooters[index].id),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 3,),
                                Text(scooters[index].percentBattery),
                                Text(scooters[index].kmBattery),
                                //Consumer<double>(
                                  //builder: (context,meters,widget){
                                   // return (meters != null) ? Text('${scooters[index]}');
                                  //},
                                //),
                              ],
                            ),

                          ),
                        ),
                      );
                    },
                ),
                ),
              ],
            ): Center(child: CircularProgressIndicator(),);
          },
        ) : Center(child: CircularProgressIndicator(),),
      ),
    );
  }



  /*
  Widget _buildContainer(double lat, double lon) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 400,
        width: 300,
             child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  _getLocation(lat, lon);
                },
                child: CustomBox(
                  image:"assets/images/mono_xami.jpg",
                  model:"xami",
                  batteryAutonomy: "90%",
                  kmAutonomy: "20 km",
                ),
              ),
            ),
      ),
    );
  }

   */

}


