// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    FirstRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FirstPage(),
      );
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SecondPage(data: args.data),
      );
    },
    ThirdRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ThirdPage(),
      );
    },
    FourthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FourthPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          FirstRoute.name,
          path: '/first-page',
        ),
        RouteConfig(
          SecondRoute.name,
          path: '/second-page',
        ),
        RouteConfig(
          ThirdRoute.name,
          path: '/third-page',
        ),
        RouteConfig(
          FourthRoute.name,
          path: '/fourth-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [FirstPage]
class FirstRoute extends PageRouteInfo<void> {
  const FirstRoute()
      : super(
          FirstRoute.name,
          path: '/first-page',
        );

  static const String name = 'FirstRoute';
}

/// generated route for
/// [SecondPage]
class SecondRoute extends PageRouteInfo<SecondRouteArgs> {
  SecondRoute({required String data})
      : super(
          SecondRoute.name,
          path: '/second-page',
          args: SecondRouteArgs(data: data),
        );

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({required this.data});

  final String data;

  @override
  String toString() {
    return 'SecondRouteArgs{data: $data}';
  }
}

/// generated route for
/// [ThirdPage]
class ThirdRoute extends PageRouteInfo<void> {
  const ThirdRoute()
      : super(
          ThirdRoute.name,
          path: '/third-page',
        );

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [FourthPage]
class FourthRoute extends PageRouteInfo<void> {
  const FourthRoute()
      : super(
          FourthRoute.name,
          path: '/fourth-page',
        );

  static const String name = 'FourthRoute';
}
