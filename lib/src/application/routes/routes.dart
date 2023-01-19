import 'package:go_router/go_router.dart';
import 'package:my_gym_track/src/application/routes/named_routes.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_page.dart';
import 'package:my_gym_track/src/presentation/pages/home/home_page.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/new_training_page.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

final router = GoRouter(
  initialLocation: NamedRoutes.home,
  routes: [
    GoRoute(
      path: NamedRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: NamedRoutes.allExercises,
      builder: (context, state) => const AllExercisesPage(),
    ),
    GoRoute(
      path: NamedRoutes.newTraining,
      builder: (context, state) => const NewTrainingPage(),
    ),
    GoRoute(
      path: NamedRoutes.trainingDivision,
      builder: (context, state) => const TrainingDivisionPage(),
    ),
  ],
);
