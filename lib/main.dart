import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/presentation/app/app_widget.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_controller.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/new_training_controller.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_controller.dart';
import 'package:provider/provider.dart';

void main() {
  setupGetIt();
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<AllExercisesController>(
            create: (_) => AllExercisesController()),
        ListenableProvider<NewTrainingController>(
            create: (_) => NewTrainingController()),
            ListenableProvider<TrainingDivisionController>(
            create: (_) => TrainingDivisionController()),
      ],
      child: const AppWidget(),
    ),
  );
}
