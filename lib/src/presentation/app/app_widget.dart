import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_themes.dart';
import 'package:my_gym_track/src/presentation/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomThemes.defaultTheme,
      home: const HomePage(),
    );
  }
}
