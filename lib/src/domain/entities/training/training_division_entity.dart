import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

class TrainingDivisionEntity {
  final String name;
  final List<ExerciseEntity> exercises;

  TrainingDivisionEntity({
    required this.name,
    required this.exercises,
  });
}
