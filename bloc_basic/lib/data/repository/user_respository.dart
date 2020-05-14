import 'package:bloc_basic/data/api_service.dart';
import 'package:bloc_basic/data/response/user_response.dart';

class UserRepository {

  final ApiService apiService;

  UserRepository({this.apiService});

  Future<UserResponse> getUsers() async {

    return await apiService.getUserList(0, 0);

  }


}