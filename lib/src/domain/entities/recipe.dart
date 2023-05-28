import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String name;
  final String image;
  final String ownerID;

  const Recipe({
    required this.name,
    required this.image,
    required this.ownerID,
  });

  @override
  List<Object?> get props => [name];
}

/// DEPRECATED - ONLY FOR TESTS
var localRecipes = const [
  Recipe(
    name: 'Vegan Apricot Tart',
    image: 'img-vegan-apricot-tart.jpeg',
    ownerID: 'Foodie Yuki',
  ),
  Recipe(
    name: 'Chorizo & mozzarella gnocchi bake',
    image: 'img-gnocchi.webp',
    ownerID: 'Marianne Turner',
  ),
  Recipe(
    name: 'Easy butter chicken',
    image: 'img-butter-chicken.webp',
    ownerID: 'Jennifer Joyce',
  ),
  Recipe(
    name: 'Easy classic lasagne',
    image: 'img-classic-lasange.webp',
    ownerID: 'Angela Boggiano',
  ),
  Recipe(
    name: 'Easy teriyaki chicken',
    image: 'img-easy-teriyaki.webp',
    ownerID: 'Esther Clark',
  ),
  Recipe(
    name: 'Easy chocolate fudge cake',
    image: 'img-chocolate-fudge-cake.webp',
    ownerID: 'Member recipe by misskay',
  ),
  Recipe(
    name: 'One-pan spaghetti with nduja, fennel & olives',
    image: 'img-one-pan-spaghetti.webp',
    ownerID: 'Cassie Best',
  ),
  Recipe(
    name: 'Easy pancakes',
    image: 'img-easy-pancake.webp',
    ownerID: 'Cassie Best',
  ),
  Recipe(
    name: 'Easy chicken fajitas',
    image: 'img-chicken-fajitas.webp',
    ownerID: 'Steven Morris',
  ),
  Recipe(
    name: 'Easy vegetable lasagne',
    image: 'img-easy-vegetable-lasagne.webp',
    ownerID: 'Emma Lewis',
  ),
  Recipe(
    name: 'Thai fried prawn & pineapple rice',
    image: 'img-thai-fried-prawn.webp',
    ownerID: 'Good Food Team',
  ),
];
