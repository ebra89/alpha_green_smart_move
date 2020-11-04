import 'package:alpha_green_smart_move/models/user_model.dart';
import 'package:http/http.dart' as http;


class UserService{

  final String baseUrl = "http://10.0.2.2:8080/user/users";

  Future<List<User>> getUsers() async{
    final response = await http.get(baseUrl);
    return null;



  }
}