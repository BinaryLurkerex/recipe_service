import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/global/global_entities.dart';
import 'package:recipe_service/domain/facade/global/global_facade.dart';

@LazySingleton(as: GlobalFacade)
class LocalGlobalFacade implements GlobalFacade {
  late UniqueId accountID;
  late List<Profile> accounts;
  late List<Post> posts;

  static getAvatarURL(String hash) => 'https://www.gravatar.com/avatar/$hash?d=identicon';

  LocalGlobalFacade() {
    posts = [
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 2,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
      Post(
        id: UniqueId(),
        data: [
          PostData(
            id: UniqueId(),
            imageUrl: 'https://www.themealdb.com/images/media/meals/1525876468.jpg',
            title: 'Wontons',
            description: '''
Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.
                ''',
          )
        ],
        likes: 0,
      ),
    ];

    final names = <String>['John Doe', 'Qwik Qwiker', 'Alex S', 'May'];

    accounts = List.generate(4, (index) {
      final uid = UniqueId();

      return Profile(
        id: uid,
        username: names.elementAt(index),
        avatarUrl: getAvatarURL(names.elementAt(index)),
        posts: posts.sublist(
          (index + 1),
          (index + 2),
        ),
        followers: index,
        following: index + 1,
      );
    });

    accountID = accounts.first.id;
  }

  @override
  Future<Profile> getProfile() async {
    return accounts.firstWhere((element) => element.id == accountID);
  }

  @override
  Future<KtList<Post>> getProfilePosts() async {
    return <Post>[].toImmutableList();
  }
}
