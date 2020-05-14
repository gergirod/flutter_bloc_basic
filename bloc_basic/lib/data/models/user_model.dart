
import 'package:bloc_basic/data/models/name_model.dart';
import 'package:bloc_basic/data/models/picture_model.dart';

class User {

  String gender;
  Name name;
  String email;
  String phone;
  String cell;
  Picture picture;

  User({
    this.gender,
    this.name,
    this.email,
    this.phone,
    this.cell,
    this.picture});


  static List<User> convertToListFromResult(List<dynamic> list) {

    List<User> users = List();
    for(var object in list) {
      users.add(User.fromMap(object));
    }
    return users;
  }

  factory User.fromMap (Map<String, dynamic> map) {
    return User(
      gender: map['gender'],
      name: Name.fromMap(map['name']),
      email: map['email'],
      phone: map['phone'],
      cell: map['cell'],
      picture: Picture.fromMap(map['picture'])
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "gender" : gender,
        "name" : name.toJson(),
        "email" : email,
        "phone" : phone,
        "cell" : cell,
        "picture" : picture.toJson()
      };

}