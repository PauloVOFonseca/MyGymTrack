// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map json) => ExerciseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      sequence: json['sequence'] as String?,
      progression: (json['progression'] as List<dynamic>?)
          ?.map((e) =>
              ProgressionModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      repetition: json['repetition'] as int?,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sequence': instance.sequence,
      'repetition': instance.repetition,
      'progression': instance.progression,
      'category': instance.category,
    };
