import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

part 'all_exercises_event.dart';
part 'all_exercises_state.dart';

class AllExercisesBloc extends Bloc<AllExercisesEvent, AllExercisesState> {
  final GetAllExercisesUsecase _getAllExercisesUsecase =
      getIt<GetAllExercisesUsecase>();

  int selected = 0;

  AllExercisesBloc() : super(AllExercisesLoading()) {
    on<FetchExercisesList>((event, emit) async {
      emit(AllExercisesLoading());
      await _onExerciseFetch(event, emit);
    });
  }

  Future<void> _onExerciseFetch(
    FetchExercisesList event,
    Emitter<AllExercisesState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 1), () async {
      final result =
          await _getAllExercisesUsecase.call(muscleGroup: event.muscleGroup);
      result.fold(
        (error) {
          emit(AllExercisesError(errorMessage: error));
        },
        (exerciseList) {
          exerciseList.sort((a, b) => a.name.compareTo(b.name));
          emit(AllExercisesLoaded(exercisesList: exerciseList));
        },
      );
    });
  }
}
