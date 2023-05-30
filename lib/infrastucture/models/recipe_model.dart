import 'package:recipe/domain/entities/recipe.dart';

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

  RecipeDEPRECATED getRecipe() {
    return RecipeDEPRECATED(
      id: id,
      owner: owner,
      name: name,
      image: image,
      desc: desc,
      bookmarks: bookmarks,
    );
  }
}
