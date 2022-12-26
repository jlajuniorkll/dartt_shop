import 'package:dartt_shop/src/pages/auth/view/sign_in_screen.dart';
import 'package:dartt_shop/src/pages/auth/view/sign_up_screen.dart';
import 'package:dartt_shop/src/pages/base/base_screen.dart';
import 'package:dartt_shop/src/pages/base/binding/navigation_binding.dart';
import 'package:dartt_shop/src/pages/cart/binding/cart_binding.dart';
import 'package:dartt_shop/src/pages/home/binding/home_binding.dart';
import 'package:dartt_shop/src/pages/splash/splash_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: PagesRoutes.splashRoute, page: () => const SplashScreen()),
    GetPage(name: PagesRoutes.signinRoute, page: () => SignInScreen()),
    GetPage(name: PagesRoutes.signupRoute, page: () => SignupScreen()),
    GetPage(
        name: PagesRoutes.baseRoute,
        page: () => const BaseScreen(),
        bindings: [NavigationBinding(), HomeBinding(), CartBinding()]),
  ];
}

abstract class PagesRoutes {
  static const String baseRoute = '/';
  static const String splashRoute = '/splash';
  static const String signinRoute = '/signin';
  static const String signupRoute = '/signup';
}
