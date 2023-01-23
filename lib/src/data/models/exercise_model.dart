import 'package:json_annotation/json_annotation.dart';
import 'package:my_gym_track/src/data/models/progression_model.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

part 'exercise_model.g.dart';

@JsonSerializable(anyMap: true)
class ExerciseModel {
  final String id;
  final String name;
  final String? sequence;
  final int? repetition;
  final List<ProgressionModel>? progression;
  final List<String> category;

  ExerciseModel({
    required this.id,
    required this.name,
    this.sequence,
    this.progression,
    this.repetition,
    required this.category,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);

  ExerciseEntity toEntity() => _$ExerciseModelToEntity(this);
}

ExerciseEntity _$ExerciseModelToEntity(ExerciseModel exerciseModel) {
  return ExerciseEntity(
    id: exerciseModel.id,
    name: exerciseModel.name,
    sequence: exerciseModel.sequence,
    repetition: exerciseModel.repetition,
    progression: exerciseModel.progression,
    category: exerciseModel.category,
  );
}
