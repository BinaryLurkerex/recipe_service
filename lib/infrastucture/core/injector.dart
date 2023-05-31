import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/firebase_options.dart';

// Generated injector
import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String env) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  getIt.init(environment: env);
}
