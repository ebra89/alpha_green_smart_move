import 'package:alpha_green_smart_move/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: UserPage(),
        ),
    );
  }
}


class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  List<User> users = [];
  final String baseUrl = "http://10.0.2.2:8080/user/users";

  void _fetchData() async{

    try{
      var response = await http.get(baseUrl);
      print(response.statusCode);
      print(response.body);
      var responseData = response.body as List;

      setState(() {
        users = responseData.map((e) => User.fromJson(e)).toList();
        print(users.length);
      });
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ...users.map(
                  (user) => ListTile(
                    leading: Container(
                      child: (user != null) ? Center(child: Text("user name "+user.userName,style: TextStyle(fontWeight: FontWeight.bold),)) : Center(child: CircularProgressIndicator(),),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
