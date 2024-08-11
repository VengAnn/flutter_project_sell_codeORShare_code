import 'package:get/get.dart';
import 'package:share_code/views/device/device_size.dart';
import 'package:share_code/views/pages/medium_pages/main_page.dart';
import 'package:share_code/views/pages/small_pages/home_page.dart';
import '../views/pages/small_pages/splash_page.dart';

class RouteHelper {
  static const String _splashPage = "/splash-page";
  static const String _mainPage = "/main-page";

  static const String _homePage = "/home-page";

  // get all routes here
  static String getSplashPage() => _splashPage;
  static String getMainPage() => _mainPage;

  // static String getHomePage() => _mainPage;

  // all routes here with get x state management
  static List<GetPage> routes = [
    GetPage(
      page: () => const SplashPage(),
      name: _splashPage,
      transition: Transition.fadeIn,
    ),
    //main page with medium size Screen
    GetPage(
      page: () => const DeviceSize(
        smallSize: MainPageSmallSize(),
        mediumSize: MainPage(),
      ),
      name: _mainPage,
      transition: Transition.fadeIn,
    ),

    // Main page with small size
    GetPage(
      page: () => const DeviceSize(
        smallSize: MainPageSmallSize(),
        mediumSize: MainPage(),
      ),
      name: _mainPage,
      transition: Transition.fadeIn,
    ),
  ];
}
