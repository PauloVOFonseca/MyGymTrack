import 'package:json_annotation/json_annotation.dart';
import 'package:my_gym_track/src/domain/entities/progression/progression_entity.dart';

part 'progression_model.g.dart';

@JsonSerializable(anyMap: true)
class ProgressionModel extends ProgressionEntity {
  ProgressionModel({
    required int date,
    required int charge,
  }) : super(
          date: date,
          charge: charge,
        );

  factory ProgressionModel.fromJson(Map<String, dynamic> json) =>
      _$ProgressionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressionModelToJson(this);

  ProgressionEntity toEntity() => _$ProgressionModelToEntity(this);
}

ProgressionEntity _$ProgressionModelToEntity(ProgressionModel progressionModel) {
  return ProgressionEntity(
    date: progressionModel.date,
    charge: progressionModel.charge,
  );
}
