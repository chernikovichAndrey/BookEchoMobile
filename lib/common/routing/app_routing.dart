import 'package:book_echo/common/extensions/route_type.dart';
import 'package:book_echo/common/routing/routes.dart';
import 'package:book_echo/core/common/repositories_container.dart';
import 'package:book_echo/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRouting {
  Uri? _initialRouteUri;
  void setInitialRouteUri(Uri uri) {
    _initialRouteUri = uri;
  }

  factory AppRouting.create({required RepositoriesContainer repos}) {
    return AppRouting._(repos: repos);
  }

  final RepositoriesContainer _repos;

  AppRouting._({required RepositoriesContainer repos}) : _repos = repos;

  Route onGenerateRoute(RouteSettings settings) {
    Routes route;
    try {
      route = Routes.values.singleWhere((e) => e.path == settings.name);
    } catch (_) {
      route = Routes.splash;
    }
    Widget child;
    bool? enableDrag;
    switch(route) {
      case Routes.splash:
        child = const SplashScreen();
    }

    return route.type.toPageRoute(
      page: child,
      settings: settings,
      animated: true,
      enableDrag: enableDrag ?? true,
    );
  }

  String get handleInitialRoute {
    return 'splash';
  }
}