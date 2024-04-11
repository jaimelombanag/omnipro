import 'package:flutter/material.dart';
import 'package:test_omni/features/presentation/pages/home/screen_elements.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const ScreenElements());

      default:
        return _materialRoute(const ScreenElements());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
