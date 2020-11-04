class User{
  final String id;
  final String name;
  final String lastName;
  final String userName;

  User(this.id, this.name, this.lastName, this.userName);

  User.fromJson(Map<dynamic,dynamic> parsedJson):
        id = (parsedJson['id'] != null) ? parsedJson['id'].toString() : null,
        name = (parsedJson['name'] != null) ? parsedJson['name'].toString() : null,
        lastName = (parsedJson['lastName'] != null) ? parsedJson['lastName'].toString() : null,
        userName = (parsedJson['userName'] != null) ? parsedJson['userName'].toDouble() : null;


}