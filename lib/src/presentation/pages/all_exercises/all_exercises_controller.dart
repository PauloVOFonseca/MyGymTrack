import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

@injectable
class AllExercisesController {
  bool isLoading = false;
  bool hasError = false;
  
  final GetAllExercisesUsecase _getAllExercisesUsecase;

  AllExercisesController(this._getAllExercisesUsecase);

  final ValueNotifier<int> selected = ValueNotifier<int>(0);

  late ValueNotifier<List<ExerciseEntity>> exercisesList =
      ValueNotifier<List<ExerciseEntity>>([]);

  getAllExercises() async {
    isLoading = true;
    final result = await _getAllExercisesUsecase.call();
    result.fold(
      (l) {
        hasError = true;
      },
      (r) {
        exercisesList = ValueNotifier<List<ExerciseEntity>>(r);
        exercisesList.value.sort((a, b) => a.name.compareTo(b.name));
      },
    );
    isLoading = false;
  }

  updateExerciseList(String muscleGroup) async {
    await getAllExercises();

    if (muscleGroup != "Todos") {
      exercisesList.value
          .removeWhere((element) => !element.category.contains(muscleGroup));
    }
  }
}
