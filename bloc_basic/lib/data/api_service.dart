import 'dart:convert';

import 'package:bloc_basic/data/response/user_response.dart';
import 'package:http/http.dart' as http;


class ApiService {

  ApiService._instantiate();

  static const BASE_URL = "https://randomuser.me/api/";

  static final instance = ApiService._instantiate();

  Future<UserResponse> getUserList(int page, int results) async {

    var response = await http.get(BASE_URL);
    if(response.statusCode == 200) {
      return UserResponse.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('there was an error');
    }

  }

}