import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:my_gym_track/src/data/data_sources/exercises/exercises_datasource.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';
import 'package:my_gym_track/src/domain/repositories/exercises/exercises_repository.dart';

@Injectable(as: ExercisesRepository)
class ExercisesRepositoryImp implements ExercisesRepository {
  final ExercisesDatasource datasource;
  ExercisesRepositoryImp(this.datasource);

  @override
  Future<Either<String, List<ExerciseEntity>>> get() async {
    try {
      final result = await datasource.get();
      return Right(result);
    } on Exception catch (error) {
      return Left(
        error.toString(),
      );
    }
  }
}
