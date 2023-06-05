// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'post.g.dart';

@HiveType(typeId: 0)
class PostModel extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String publisher;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int pages;
  @HiveField(5)
  final List<String?> images;
  @HiveField(6)
  final List<String?> data;

  const PostModel({
    required this.id,
    required this.title,
    required this.publisher,
    required this.date,
    required this.pages,
    required this.images,
    required this.data,
  });

  @override
  List<Object?> get props => [id];
}
