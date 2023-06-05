import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipe_service/infrastucture/local/entities/comment.dart';
import 'package:recipe_service/infrastucture/local/entities/post.dart';
import 'package:recipe_service/infrastucture/local/entities/profile.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String env) async {
  await Firebase.initializeApp();
  await Hive.initFlutter();

  Hive.registerAdapter(CommentModelAdapter());
  Hive.registerAdapter(PostModelAdapter());
  Hive.registerAdapter(ProfileModelAdapter());

  getIt.init(environment: env);
}
