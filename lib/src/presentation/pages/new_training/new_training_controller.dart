import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

enum NewTrainingPageState { loading, loaded, error }

class NewTrainingController extends ChangeNotifier {
  final GetAllExercisesUsecase _getAllExercisesUsecase =
      getIt<GetAllExercisesUsecase>();

  NewTrainingPageState _pageState = NewTrainingPageState.loading;

  String? errorMessage;

  int selected = 0;

  List<ExerciseEntity> exerciseList = [];

  NewTrainingController() {
    fetchExercises();
  }

  NewTrainingPageState get pageState => _pageState;

  fetchExercises({String? muscleGroup}) async {
    _pageState = NewTrainingPageState.loading;

    notifyListeners();

    await Future.delayed(const Duration(seconds: 1), () async {
      final result =
          await _getAllExercisesUsecase.call(muscleGroup: muscleGroup);
      result.fold(
        (error) {
          errorMessage = error;
          _pageState = NewTrainingPageState.error;
        },
        (exercises) {
          exercises.sort((a, b) => a.name.compareTo(b.name));

          exerciseList.clear();
          exerciseList = exercises;

          _pageState = NewTrainingPageState.loaded;
        },
      );
    });

    notifyListeners();
  }

  void goToTrainingDivisionpage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TrainingDivisionPage()),
    );
  }
}
