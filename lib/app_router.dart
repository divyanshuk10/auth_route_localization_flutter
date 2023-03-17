import 'package:auth_route_flutter/first_page.dart';
import 'package:auth_route_flutter/fourth_page.dart';
import 'package:auth_route_flutter/home_page.dart';
import 'package:auth_route_flutter/second_page.dart';
import 'package:auth_route_flutter/third_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: HomePage, initial: true),
  AutoRoute(page: FirstPage),
  AutoRoute(page: SecondPage),
  AutoRoute(page: ThirdPage),
  AutoRoute(page: FourthPage),
])
class AppRouter extends _$AppRouter {}
