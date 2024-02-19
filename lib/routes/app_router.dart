import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import '../second_inner_page.dart';
import '../second_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page, initial: true, path: '/'),
        AutoRoute(page: SecondRoute.page, path: '/second-page/:id', children: [
          AutoRoute(page: SecondInnerRoute.page, path: 'inner'),
        ]),
      ];
}
