import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'comment.g.dart';

@HiveType(typeId: 1)
class CommentModel extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String sender;
  @HiveField(2)
  final String post;
  @HiveField(3)
  final String message;
  @HiveField(4)
  final String date;

  const CommentModel({
    required this.id,
    required this.sender,
    required this.post,
    required this.message,
    required this.date,
  });

  @override
  List<Object?> get props => [id];
}
