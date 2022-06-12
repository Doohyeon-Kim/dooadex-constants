import 'route_path.dart';
import 'named_route.dart';

class DooadexRoute {
  DooadexRoute._();

  static RoutePath path = RoutePath();
  static NamedRoute name = NamedRoute();

  static void init({required RoutePath routePath, required NamedRoute namedRoute}) {
    routePath = routePath;
    namedRoute = namedRoute;
  }
}
