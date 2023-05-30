import 'package:equatable/equatable.dart';

class RecipeDEPRECATED extends Equatable {
  final String id;
  final String owner;

  final String name;
  final String image;
  final String desc;

  final List<String> bookmarks;

  const RecipeDEPRECATED({
    required this.id,
    required this.owner,
    required this.name,
    required this.image,
    required this.desc,
    required this.bookmarks,
  });

  @override
  List<Object?> get props => [id, owner];
}
