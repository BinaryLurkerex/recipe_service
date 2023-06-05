// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'profile.g.dart';

@HiveType(typeId: 2)
class ProfileModel extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String avatar;
  @HiveField(3)
  final List<String> likes;
  @HiveField(4)
  final List<String> bookmarks;
  @HiveField(5)
  final List<String> following;

  const ProfileModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.likes,
    required this.bookmarks,
    required this.following,
  });

  @override
  List<Object?> get props => [id];
}
