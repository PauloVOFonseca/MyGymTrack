import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

abstract class ExercisesDatasource {
  Future<List<ExerciseEntity>> get();
}
