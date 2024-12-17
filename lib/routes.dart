import 'package:advance_flutter_exam/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const String home = '/';
}
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => const HomePage(),
};

