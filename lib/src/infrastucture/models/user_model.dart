import 'package:recipe/src/domain/entities/user.dart';

class UserModel {
  String id;

  String name;
  String email;

  //! Hashed
  String password;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  User getUser() {
    return User(
      id: id,
      name: name,
      email: email,
    );
  }
}
