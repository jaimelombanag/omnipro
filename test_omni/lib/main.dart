import 'package:flutter/material.dart';
import 'package:test_omni/app/dependency.dart';
import 'package:test_omni/features/presentation/app.dart';

void main() {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
