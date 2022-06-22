// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../infrastructure/model/api_data_model.dart' as _i6;
import '../screens/details_page.dart' as _i2;
import '../screens/home_page.dart' as _i1;
import '../screens/search_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MyHomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomePage());
    },
    DetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPageRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DetailsPage(
              key: args.key, productResult: args.productResult));
    },
    SearchScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i3.SearchScreen(),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i4.RouteConfig(DetailsPageRoute.name, path: '/details-page'),
        _i4.RouteConfig(SearchScreenRoute.name, path: '/search-screen')
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomePageRoute extends _i4.PageRouteInfo<void> {
  const MyHomePageRoute() : super(MyHomePageRoute.name, path: '/');

  static const String name = 'MyHomePageRoute';
}

/// generated route for
/// [_i2.DetailsPage]
class DetailsPageRoute extends _i4.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({_i5.Key? key, required _i6.Result productResult})
      : super(DetailsPageRoute.name,
            path: '/details-page',
            args: DetailsPageRouteArgs(key: key, productResult: productResult));

  static const String name = 'DetailsPageRoute';
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({this.key, required this.productResult});

  final _i5.Key? key;

  final _i6.Result productResult;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key, productResult: $productResult}';
  }
}

/// generated route for
/// [_i3.SearchScreen]
class SearchScreenRoute extends _i4.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(SearchScreenRoute.name, path: '/search-screen');

  static const String name = 'SearchScreenRoute';
}
