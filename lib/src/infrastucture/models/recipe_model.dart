import 'package:recipe/src/domain/entities/recipe.dart';

class RecipeModel {
  String id;
  String owner;

  String name;
  String image;
  String desc;

  List<String> bookmarks;

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
      id: id,
      owner: owner,
      name: name,
      image: image,
      desc: desc,
      bookmarks: bookmarks,
    );
  }
}
