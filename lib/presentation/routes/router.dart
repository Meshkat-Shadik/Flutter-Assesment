import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/presentation/screens/details_page.dart';
import 'package:ecommerce_demo/presentation/screens/home_search_reusable.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: HomeSearchReusable, initial: true),
    AutoRoute<dynamic>(page: DetailsPage),
  ],
)
class $AppRouter {}
