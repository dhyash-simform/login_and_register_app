import 'package:flutter/material.dart';
import 'package:login_register_app/screens/home_screen.dart';

import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'utils/common_widgets/invalid_route.dart';
import 'values/app_routes.dart';

class Routes {
  const Routes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Route<dynamic> getRoute({
      required Widget widget,
      bool fullscreenDialog = false,
    }) {
      return MaterialPageRoute<void>(
        builder: (context) => widget,
        settings: settings,
        fullscreenDialog: fullscreenDialog,
      );
    }

    switch (settings.name) {
      case AppRoutes.login:
        return getRoute(widget: const LoginScreen());

      case AppRoutes.register:
        return getRoute(widget: const RegisterScreen());

      case AppRoutes.home:
        return getRoute(widget: const HomeScreen());

      /// An invalid route. User shouldn't see this,
      /// it's for debugging purpose only.
      default:
        return getRoute(widget: const InvalidRoute());
    }
  }
}
