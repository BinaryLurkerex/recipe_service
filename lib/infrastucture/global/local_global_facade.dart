import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/global/global_entities.dart';
import 'package:recipe_service/domain/facade/global/global_facade.dart';

@LazySingleton(as: GlobalFacade)
class LocalGlobalFacade implements GlobalFacade {
  late Profile account;
  late List<Post> accountPosts;

  static getAvatarURL(String hash) => 'https://www.gravatar.com/avatar/$hash?d=identicon';

  LocalGlobalFacade() {
    final accountID = UniqueId();

    accountPosts = List.generate(
      5,
      (index) => Post(
        id: UniqueId(),
        owner: accountID,
        data: [],
        likes: 0,
      ),
    );

    account = Profile(
      id: accountID,
      username: 'John Doe',
      avatarUrl: getAvatarURL('John Doe'),
      posts: accountPosts.length,
      followers: 3,
      following: 1,
    );
  }

  @override
  Future<Profile> getProfile() async {
    return account;
  }

  @override
  Future<KtList<Post>> getProfilePosts() async {
    return accountPosts.toImmutableList();
  }
}
