import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

enum TrainingDivisionPageState { loading, loaded, error }

class TrainingDivisionController extends ChangeNotifier {
  final GetAllExercisesUsecase _getAllExercisesUsecase =
      getIt<GetAllExercisesUsecase>();

  TrainingDivisionPageState _pageState = TrainingDivisionPageState.loading;

  String? errorMessage;

  int groupSelected = 0;

  List<ExerciseEntity> exerciseList = [];

  List<ExerciseEntity> selectedExercises = [];

  TrainingDivisionController() {
    fetchExercises();
  }

  TrainingDivisionPageState get pageState => _pageState;

  void fetchExercises({String? muscleGroup}) async {
    _pageState = TrainingDivisionPageState.loading;

    notifyListeners();

    await Future.delayed(const Duration(seconds: 1), () async {
      final result =
          await _getAllExercisesUsecase.call(muscleGroup: muscleGroup);
      result.fold(
        (error) {
          errorMessage = error;
          _pageState = TrainingDivisionPageState.error;
        },
        (exercises) {
          exercises.sort((a, b) => a.name.compareTo(b.name));
          exerciseList.clear();
          exerciseList = exercises;

          _pageState = TrainingDivisionPageState.loaded;
        },
      );
    });

    notifyListeners();
  }

  void onSelectWorkout(ExerciseEntity exercise) {

    if (exerciseIsAlreadyOnList(exercise.id)) {
      selectedExercises.removeWhere((element) => element.id == exercise.id);
    } else {
      selectedExercises.add(exercise);
    }
    notifyListeners();
  }

  bool exerciseIsAlreadyOnList(String id) =>
      selectedExercises.any((element) => element.id == id);
}
