// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../infrastructure/model/api_data_model.dart' as _i5;
import '../screens/details_page.dart' as _i2;
import '../screens/home_search_reusable.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeSearchReusableRoute.name: (routeData) {
      final args = routeData.argsAs<HomeSearchReusableRouteArgs>(
          orElse: () => const HomeSearchReusableRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.HomeSearchReusable(
              isHomePage: args.isHomePage, key: args.key));
    },
    DetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPageRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DetailsPage(
              key: args.key, productResult: args.productResult));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeSearchReusableRoute.name, path: '/'),
        _i3.RouteConfig(DetailsPageRoute.name, path: '/details-page')
      ];
}

/// generated route for
/// [_i1.HomeSearchReusable]
class HomeSearchReusableRoute
    extends _i3.PageRouteInfo<HomeSearchReusableRouteArgs> {
  HomeSearchReusableRoute({bool? isHomePage, _i4.Key? key})
      : super(HomeSearchReusableRoute.name,
            path: '/',
            args:
                HomeSearchReusableRouteArgs(isHomePage: isHomePage, key: key));

  static const String name = 'HomeSearchReusableRoute';
}

class HomeSearchReusableRouteArgs {
  const HomeSearchReusableRouteArgs({this.isHomePage, this.key});

  final bool? isHomePage;

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeSearchReusableRouteArgs{isHomePage: $isHomePage, key: $key}';
  }
}

/// generated route for
/// [_i2.DetailsPage]
class DetailsPageRoute extends _i3.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({_i4.Key? key, required _i5.Result productResult})
      : super(DetailsPageRoute.name,
            path: '/details-page',
            args: DetailsPageRouteArgs(key: key, productResult: productResult));

  static const String name = 'DetailsPageRoute';
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({this.key, required this.productResult});

  final _i4.Key? key;

  final _i5.Result productResult;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key, productResult: $productResult}';
  }
}
