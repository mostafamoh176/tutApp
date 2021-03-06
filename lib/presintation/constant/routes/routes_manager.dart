import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutapp/presintation/Screens/forget_Password/view.dart';
import 'package:tutapp/presintation/Screens/login/view.dart';
import 'package:tutapp/presintation/Screens/main/view.dart';
import 'package:tutapp/presintation/Screens/onBoarding/view.dart';
import 'package:tutapp/presintation/Screens/register/view.dart';
import 'package:tutapp/presintation/Screens/splash/view.dart';
import 'package:tutapp/presintation/Screens/stor_details/view.dart';

import '../string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreView());
      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
