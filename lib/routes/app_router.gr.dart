// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SecondInnerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SecondInnerPage(),
      );
    },
    SecondRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SecondRouteArgs>(
          orElse: () => SecondRouteArgs(
                  id: pathParams.getString(
                'id',
                'default',
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondInnerPage]
class SecondInnerRoute extends PageRouteInfo<void> {
  const SecondInnerRoute({List<PageRouteInfo>? children})
      : super(
          SecondInnerRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondInnerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondPage]
class SecondRoute extends PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    Key? key,
    String id = 'default',
    List<PageRouteInfo>? children,
  }) : super(
          SecondRoute.name,
          args: SecondRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const PageInfo<SecondRouteArgs> page = PageInfo<SecondRouteArgs>(name);
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    this.id = 'default',
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, id: $id}';
  }
}
