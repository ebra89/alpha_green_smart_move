import 'package:geolocator/geolocator.dart';

class GeoLocatorService{

  final Geolocator geolocator = Geolocator();
  Future<Position> getLocation() async{
    //var geolocator = Geolocator();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }

  Future <double> getDistance(double startLatitude,double startLongitude,double endLatitude,double endLongitude) async{
    return await Geolocator.distanceBetween(startLatitude,startLongitude,endLatitude,endLongitude);
  }


}