import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/model.dart';

getUser() async {
//   Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }
  var response = await http.get(Uri.parse(
      'https://phplaravel-704365-2879244.cloudwaysapps.com/api/jawan_pakistan/testing'));
  var jsonData = jsonDecode(response.body);

  List<UserModel> users = [];
  for (var i in jsonData) {
    // UserModel userrr = UserModel();
    UserModel user= UserModel(
      data: [

      // id: i['id'],
      // title: i['name'],
      // video:i['username'],
      ],
      );
    users.add(user);
  }
  return users;
}
