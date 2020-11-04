import 'package:alpha_green_smart_move/services/geolocator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/google_map_view.dart';
import 'components/side_bar_layout.dart';

class HomeScreen extends StatelessWidget {
  //final locatorService = GeoLocatorService();
  //final electricScooterService = ElectricScooterService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GoogleMapView(),
        //child: Sidebar(),
    );
  }
}