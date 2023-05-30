import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/app_router.gr.dart';
import 'package:recipe/presentation/sign_in/widgets/sign_in_form.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInRoute.page, initial: true),
        // AutoRoute(page: InitialRoute.page, initial: true),
        // AutoRoute(page: LoginRoute.page),
        // AutoRoute(page: NotFoundRoute.page),
        // // AutoRoute(page: HomeRoute.page),
        // // AutoRoute(page: BookmarksRoute.page),
        // // AutoRoute(page: ProfileRoute.page),
        // AutoRoute(page: AppRoute.page),
      ];
}
