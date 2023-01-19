import 'package:get_it/get_it.dart';
import 'package:my_gym_track/src/application/routes/named_routes.dart';
import 'package:my_gym_track/src/application/routes/route_handler.dart';
import 'package:my_gym_track/src/application/services/locator.dart';

//@Singleton()
class RouteService {
  RouteHandler routeHandler = getIt<RouteHandler>();

  RouteService();

  static RouteService get instance => GetIt.I.get<RouteService>();

  void goToSplashPage() =>
      routeHandler.pushNamedAndRemoveAll(NamedRoutes.splash);

  void goToHome() => routeHandler.pushNamedAndRemoveAll(NamedRoutes.home);

  void goToAllExercisesPage() => routeHandler.pushNamed(NamedRoutes.allExercises);

  void goToNewTrainingPage() => routeHandler.pushNamed(NamedRoutes.newTraining);

  String getRouteName() => routeHandler.getRouteName();

  void pop() {
    routeHandler.pop();
  }
}
