import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_service/domain/core/entity.dart';
import 'package:recipe_service/domain/core/value_object.dart';

part 'global_entities.freezed.dart';

@freezed
class Profile with _$Profile implements Entity {
  const factory Profile({
    required UniqueId id,
    required String username,
    required String avatarUrl,
    required List<Post> posts,
    required int followers,
    required int following,
  }) = _Profile;
}

@freezed
class Post with _$Post implements Entity {
  const factory Post({
    required UniqueId id,
    required List<PostData> data,
    required int likes,
  }) = _Post;
}

@freezed
class PostData with _$PostData implements Entity {
  const factory PostData({
    required UniqueId id,
    required String imageUrl,
    required String title,
    required String description,
  }) = _PostData;
}

@freezed
class Comment with _$Comment implements Entity {
  const factory Comment({
    required UniqueId id,
    required String postID,
    required String senderID,
    required String data,
    required DateTime createdAt,
  }) = _Comment;
}
