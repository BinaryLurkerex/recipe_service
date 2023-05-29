import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String id;
  final String owner;
  final String name;
  final String image;
  final String desc;
  final int favsCount;

  const Recipe({
    required this.id,
    required this.owner,
    required this.name,
    required this.image,
    required this.desc,
    required this.favsCount,
  });

  @override
  List<Object?> get props => [name];
}
