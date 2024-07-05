import 'package:get/get.dart';
import 'package:getx/presentation/splash/splash_screen.dart';

class NamedRoutes {
  NamedRoutes._();
  static const String splash = "splash";
}

class RouteGenerator {
 static List<GetPage> getRoute() => [GetPage(name: NamedRoutes.splash, page: () => const SplashScreen())];
}
