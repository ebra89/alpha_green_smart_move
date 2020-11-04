import 'package:alpha_green_smart_move/models/electric_scooter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class ElectricScooterService{

  //Todo
  // qui ci andrebbe il token
  //final Key = 'token';
  String url =  'http://192.168.1.140:8080/electricScooter/scooters';

  Future<List<ElectricScooter>> getElectricScooters() async {
    List<ElectricScooter> scooters;

    try{
      var response = await http.get(url);
      print("response service "+response.statusCode.toString());
      if(response.statusCode == 200){
        print(response.body);
        print(response.toString());
        //scooters = jsonResponse.map((scooter) => ElectricScooter.fromJson(scooter,icon)).toList();
        scooters = scootersFromJson(response.body);
        print(scooters.toString());
      }else{
        print("la risposta non è 200!!");
      }
    }catch(e){
      print(e);
    }
    print((scooters != null)? scooters.length : "scooters è null");
    return scooters;
  }

}