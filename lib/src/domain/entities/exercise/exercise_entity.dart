import 'package:my_gym_track/src/domain/entities/progression/progression_entity.dart';

class ExerciseEntity {
  final String name;
  final String? sequence;
  final int? repetition;
  final List<ProgressionEntity>? progression;
  //final String videoURL;
  final List<String> category;

  ExerciseEntity({
    required this.name,
    this.sequence,
    this.repetition,
    this.progression,
    required this.category,
  });
}
