import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/repositories/exercises/exercises_repository.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';

@Injectable(as: GetAllExercisesUsecase)
class GetAllExercisesUsecaseImp implements GetAllExercisesUsecase {
  final ExercisesRepository repository;
  GetAllExercisesUsecaseImp(this.repository);

  @override
  Future<Either<String, List<ExerciseEntity>>> call() async {
    return await repository.get();
  }
}
