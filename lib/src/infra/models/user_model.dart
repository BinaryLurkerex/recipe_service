import 'package:objectbox/objectbox.dart';
import 'package:recipe/src/domain/entities/user.dart';

@Entity()
@Sync()
class UserModel {
  @Id()
  int id;
  String name;

  UserModel({
    required this.id,
    required this.name,
  });

  User getUser() {
    return User(
      id: id.toRadixString(16),
      name: name,
    );
  }
}
