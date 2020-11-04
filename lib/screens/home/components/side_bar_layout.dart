import 'package:alpha_green_smart_move/costants.dart';
import 'package:alpha_green_smart_move/screens/home/components/google_map_view.dart';
import 'package:alpha_green_smart_move/screens/home/mapView/map_view.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:swipedetector/swipedetector.dart';

import 'custom_drawer.dart';
import 'map_view_home.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {

  FSBStatus status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: kPrimaryLightColor,
                  onPressed: (){
                    setState(() {
                      status = status == FSBStatus.FSB_OPEN?FSBStatus.FSB_CLOSE:FSBStatus.FSB_OPEN;
                    });
                  },
                  child: Icon(Icons.menu,color: Colors.black, size: 24,),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SwipeDetector(
        onSwipeRight: (){
          setState(() {
            status = FSBStatus.FSB_OPEN;
          });
        },
        onSwipeLeft: (){
          setState(() {
            status = FSBStatus.FSB_CLOSE;
          });
        },
        child: FoldableSidebarBuilder(status: status, drawer: CustomDrawer(
          closeDrawer: (){
            setState(() {
              status = FSBStatus.FSB_CLOSE;
            });
          },
        ), screenContents: GoogleMapView()),
      ),
    );
  }
}

