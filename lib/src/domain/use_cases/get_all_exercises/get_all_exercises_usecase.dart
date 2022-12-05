import 'package:dartz/dartz.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

abstract class GetAllExercisesUsecase {
  Future<Either<String, List<ExerciseEntity>>> call({String? muscleGroup});
}
