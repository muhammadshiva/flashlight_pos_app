import 'package:flashlight_pos_app/presentation/auth/pages/login_page.dart';
import 'package:flashlight_pos_app/presentation/customer/views/pages/customer_form_page.dart';
import 'package:flashlight_pos_app/presentation/customer/views/pages/customer_type_page.dart';
import 'package:flashlight_pos_app/presentation/home/views/pages/dashboard_page.dart';
import 'package:flashlight_pos_app/presentation/setting/views/page/setting_page.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes/route_constants.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case RouteConstants.customerType:
        return MaterialPageRoute(
          builder: (_) => const CustomerTypePage(),
        );
      case RouteConstants.customerForm:
        return MaterialPageRoute(
          builder: (_) => const CustomerFormPage(),
        );
      case RouteConstants.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
        );
      case RouteConstants.setting:
        return MaterialPageRoute(
          builder: (_) => const SettingPage(),
        );
      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Center(child: Text("Something wrong")),
        );
    }
  }
}
