import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/facade/global/global_entities.dart';

abstract class GlobalFacade {
  Future<Profile> getProfile();
  Future<KtList<Post>> getProfilePosts();
}
