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

  AllExercisesBloc() : super(AllExercisesLoading()) {
    on<FetchExercisesList>((event, emit) async {
      await Future.delayed(const Duration(seconds: 3), () async {
        final result = await _getAllExercisesUsecase.call();
        result.fold(
          (l) {
            emit(AllExercisesError(errorMessage: l));
          },
          (r) {
            r.sort((a, b) => a.name.compareTo(b.name));
            emit(AllExercisesLoaded(exercisesList: r));
          },
        );
      });
    });
    on<UpdateExercisesList>((event, emit) => null);
  }
}
