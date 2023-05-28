import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: InitialRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: NotFoundRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: BookmarksRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ];
}
