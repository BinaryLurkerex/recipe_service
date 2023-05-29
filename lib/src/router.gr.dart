// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:recipe/src/presentation/pages/app_page.dart' as _i4;
import 'package:recipe/src/presentation/pages/initial_page.dart' as _i3;
import 'package:recipe/src/presentation/pages/login_page.dart' as _i2;
import 'package:recipe/src/presentation/pages/not_found.dart' as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    NotFoundRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NotFoundPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(key: args.key),
      );
    },
    InitialRoute.name: (routeData) {
      final args = routeData.argsAs<InitialRouteArgs>(
          orElse: () => const InitialRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.InitialPage(key: args.key),
      );
    },
    AppRoute.name: (routeData) {
      final args =
          routeData.argsAs<AppRouteArgs>(orElse: () => const AppRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.AppPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.NotFoundPage]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<LoginRouteArgs> page =
      _i5.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.InitialPage]
class InitialRoute extends _i5.PageRouteInfo<InitialRouteArgs> {
  InitialRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          InitialRoute.name,
          args: InitialRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static const _i5.PageInfo<InitialRouteArgs> page =
      _i5.PageInfo<InitialRouteArgs>(name);
}

class InitialRouteArgs {
  const InitialRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'InitialRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AppPage]
class AppRoute extends _i5.PageRouteInfo<AppRouteArgs> {
  AppRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AppRoute.name,
          args: AppRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static const _i5.PageInfo<AppRouteArgs> page =
      _i5.PageInfo<AppRouteArgs>(name);
}

class AppRouteArgs {
  const AppRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AppRouteArgs{key: $key}';
  }
}
