import 'package:objectbox/objectbox.dart';
import 'package:recipe/src/domain/entities/user.dart';

@Entity()
@Sync()
class UserModel {
  @Id()
  int id;
  String name;
  String email;

  //! Hashed password
  String password;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  User getUser() {
    return User(
      id: id.toRadixString(16),
      name: name,
      email: email,
    );
  }
}
