import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: HomeRoute.page),
    AutoRoute(path: '/detail', page: DetailRoute.page)
  ];
}