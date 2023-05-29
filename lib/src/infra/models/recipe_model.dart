import 'package:objectbox/objectbox.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/infra/models/user_model.dart';

@Entity()
@Sync()
class RecipeModel {
  @Id()
  int id;
  ToOne<UserModel> owner = ToOne<UserModel>();

  String name;
  String image;
  String desc;

  ToMany<UserModel> bookmarks = ToMany<UserModel>();

  RecipeModel({
    required this.id,
    required this.owner,
    required this.name,
    required this.image,
    required this.desc,
    required this.bookmarks,
  });

  Recipe getRecipe() {
    return Recipe(
      id: id.toRadixString(16),
      owner: id.toRadixString(16),
      name: name,
      image: image,
      desc: desc,
      favsCount: bookmarks.length,
    );
  }
}
