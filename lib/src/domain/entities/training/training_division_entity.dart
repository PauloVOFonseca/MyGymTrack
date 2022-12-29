import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

class TrainingDivisionEntity {
  final String name;
  final List<ExerciseEntity> exercises;
  final String? note;

  TrainingDivisionEntity({
    required this.name,
    required this.exercises,
    this.note,
  });
}
