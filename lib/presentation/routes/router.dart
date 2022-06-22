import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/presentation/screens/details_page.dart';
import 'package:ecommerce_demo/presentation/screens/home_page.dart';
import 'package:ecommerce_demo/presentation/screens/search_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: MyHomePage, initial: true),
    AutoRoute<dynamic>(page: DetailsPage),
    AutoRoute<dynamic>(page: SearchScreen, fullscreenDialog: true),
  ],
)
class $AppRouter {}
