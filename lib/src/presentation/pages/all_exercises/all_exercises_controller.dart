import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

enum AllExercisesPageState { loading, loaded, error }

class AllExercisesController with ChangeNotifier {
  final GetAllExercisesUsecase _getAllExercisesUsecase =
      getIt<GetAllExercisesUsecase>();

  AllExercisesPageState _pageState = AllExercisesPageState.loading;

  String? errorMessage;

  int selected = 0;

  List<ExerciseEntity> exerciseList = [];

  AllExercisesController() {
    fetchExercises();
  }

  AllExercisesPageState get pageState => _pageState;

  fetchExercises({String? muscleGroup}) async {
    _pageState = AllExercisesPageState.loading;

    notifyListeners();

    await Future.delayed(const Duration(seconds: 1), () async {
      final result =
          await _getAllExercisesUsecase.call(muscleGroup: muscleGroup);
      result.fold(
        (error) {
          errorMessage = error;
          _pageState = AllExercisesPageState.error;
        },
        (exercises) {
          exercises.sort((a, b) => a.name.compareTo(b.name));
          
          exerciseList.clear();
          exerciseList = exercises;

          _pageState = AllExercisesPageState.loaded;
        },
      );
    });

    notifyListeners();
  }
}
