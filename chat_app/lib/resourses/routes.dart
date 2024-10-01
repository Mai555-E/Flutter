import '../feature/presentation/views/login_view.dart';
import '../feature/presentation/views/splace_screen/splash_screen.dart';
import 'package:get/get.dart';

class NamedRoutes {
  NamedRoutes._();

  static const String splashScreen = "/splashScreen";
  static const String login = "/login";
}

class RouteGenerator {
 static List<GetPage> getRoute() {
    return [GetPage(name: NamedRoutes.splashScreen, page: ()=>const SplashScreen()),
    
    GetPage(name: NamedRoutes.login, page: ()=> Login())];
  }
}
