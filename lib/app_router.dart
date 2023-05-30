import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: RecipeRoute.page),
      ];
}
