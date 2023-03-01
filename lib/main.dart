import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/presentation/app/app_widget.dart';

void main() {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const AppWidget(),
  );
}
