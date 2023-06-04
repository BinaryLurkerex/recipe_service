import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_service/domain/facade/recipe_post/post.dart';

@lazySingleton
class FirebasePostMapper {
  Post? toDomain(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    //TOOD: write mapper;
    return null;
  }
}
