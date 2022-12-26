import 'package:dartz/dartz.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/data/data_sources/exercises/exercises_datasource.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/repositories/exercises/exercises_repository.dart';

class ExercisesRepositoryImp implements ExercisesRepository {
  ExercisesDatasource datasource = getIt<ExercisesDatasource>();

  @override
  Future<Either<String, List<ExerciseEntity>>> get(String? muscleGroup) async {
    try {
      final result = await datasource.get(muscleGroup);
      return Right(result);
    } on Exception catch (error) {
      return Left(
        error.toString(),
      );
    }
  }
}
