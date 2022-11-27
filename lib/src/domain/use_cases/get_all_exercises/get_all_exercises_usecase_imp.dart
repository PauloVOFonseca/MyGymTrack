import 'package:dartz/dartz.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/repositories/exercises/exercises_repository.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

class GetAllExercisesUsecaseImp implements GetAllExercisesUsecase {
  ExercisesRepository repository = getIt<ExercisesRepository>();

  @override
  Future<Either<String, List<ExerciseEntity>>> call() async {
    return await repository.get();
  }
}
