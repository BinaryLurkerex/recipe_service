import 'package:equatable/equatable.dart';

class UserDEPRECATED extends Equatable {
  final String id;
  final String name;
  final String email;

  const UserDEPRECATED({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  List<Object?> get props => [id];
}
