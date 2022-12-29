import 'package:my_gym_track/src/domain/entities/training/training_division_entity.dart';

class TrainingSheetEntity {
  final List<TrainingDivisionEntity> exercises;
  final int duration;
  final DateTime? startDate;
  final DateTime? finalDate;
  final String? note;

  TrainingSheetEntity({
    required this.exercises,
    required this.duration,
    this.startDate,
    this.finalDate,
    this.note,
  });
}
