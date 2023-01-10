import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/entities/training/training_sheet_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

part 'new_training_event.dart';
part 'new_training_state.dart';

class NewTrainingBloc extends Bloc<NewTrainingEvent, NewTrainingState> {
  final GetAllExercisesUsecase _getAllExercisesUsecase =
      getIt<GetAllExercisesUsecase>();

  int selected = 0;

  NewTrainingBloc() : super(const NewTrainingInitial()) {
    on<FetchExercisesList>((event, emit) async {
      emit(ExercisesListLoading());
      await _onExerciseFetch(event, emit);
    });
  }

  Future<void> _onExerciseFetch(
    FetchExercisesList event,
    Emitter<NewTrainingState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 1), () async {
      final result =
          await _getAllExercisesUsecase.call(muscleGroup: event.muscleGroup);
      result.fold(
        (error) {
          emit(ExercisesListError(errorMessage: error));
        },
        (exerciseList) {
          exerciseList.sort((a, b) => a.name.compareTo(b.name));
          emit(ExercisesListLoaded(exercisesList: exerciseList));
        },
      );
    });
  }

  void goToTrainingDivisionpage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TrainingDivisionPage()),
    );
  }
}
