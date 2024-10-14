import 'package:flutter/material.dart';
import 'package:money_management/core/routes/routes.dart';
import 'package:money_management/features/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.spalashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
