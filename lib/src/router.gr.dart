// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:recipe/src/presentation/pages/bookmarks_page.dart' as _i1;
import 'package:recipe/src/presentation/pages/home_page.dart' as _i5;
import 'package:recipe/src/presentation/pages/initial_page.dart' as _i4;
import 'package:recipe/src/presentation/pages/login_page.dart' as _i3;
import 'package:recipe/src/presentation/pages/not_found.dart' as _i2;
import 'package:recipe/src/presentation/pages/profile_page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    BookmarksRoute.name: (routeData) {
      final args = routeData.argsAs<BookmarksRouteArgs>(
          orElse: () => const BookmarksRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BookmarksPage(key: args.key),
      );
    },
    NotFoundRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NotFoundPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    InitialRoute.name: (routeData) {
      final args = routeData.argsAs<InitialRouteArgs>(
          orElse: () => const InitialRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.InitialPage(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfilePage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.BookmarksPage]
class BookmarksRoute extends _i7.PageRouteInfo<BookmarksRouteArgs> {
  BookmarksRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          BookmarksRoute.name,
          args: BookmarksRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static const _i7.PageInfo<BookmarksRouteArgs> page =
      _i7.PageInfo<BookmarksRouteArgs>(name);
}

class BookmarksRouteArgs {
  const BookmarksRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'BookmarksRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.NotFoundPage]
class NotFoundRoute extends _i7.PageRouteInfo<void> {
  const NotFoundRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<LoginRouteArgs> page =
      _i7.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.InitialPage]
class InitialRoute extends _i7.PageRouteInfo<InitialRouteArgs> {
  InitialRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          InitialRoute.name,
          args: InitialRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static const _i7.PageInfo<InitialRouteArgs> page =
      _i7.PageInfo<InitialRouteArgs>(name);
}

class InitialRouteArgs {
  const InitialRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'InitialRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i7.PageInfo<ProfileRouteArgs> page =
      _i7.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}
