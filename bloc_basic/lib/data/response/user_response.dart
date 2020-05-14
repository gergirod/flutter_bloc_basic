import 'package:bloc_basic/data/models/info_model.dart';
import 'package:bloc_basic/data/models/user_model.dart';


class UserResponse {

  List<User> results;
  Info info;

  UserResponse({
    this.results,
    this.info});

  factory UserResponse.fromMap(Map<String, dynamic> map) {

    return UserResponse(
        results: User.convertToListFromResult(map['results']),
        info: Info.fromMap(map['info']));
  }

}