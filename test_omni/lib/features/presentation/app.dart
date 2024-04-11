import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omni/config/theme/app_theme.dart';
import 'package:test_omni/features/presentation/controllers/home/home_binding.dart';
import 'package:test_omni/features/presentation/page/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/",
      initialBinding: HomeBinding(),
      home: const HomePage(),
    );
  }
}
