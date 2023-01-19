import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/routes/routes.dart';
import 'package:my_gym_track/src/application/theme/custom_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: CustomThemes.defaultTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
