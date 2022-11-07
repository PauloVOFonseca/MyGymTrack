import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_gym_track/src/data/data_sources/exercises/exercises_datasource.dart';
import 'package:my_gym_track/src/data/models/exercise_model.dart';
import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

@Injectable(as: ExercisesDatasource)
class ExercisesDatasourceImp implements ExercisesDatasource {
  ExercisesDatasourceImp();

  @override
  Future<List<ExerciseEntity>> get() async {
    try {
      final String response =
          await rootBundle.loadString('assets/mocks/exercise_list.json');
      final data = await json.decode(response);

      final responseList = data['EXERCISES_LIST_MOCK'] as List;

      return responseList
          .map((e) => ExerciseModel.fromJson(e).toEntity())
          .toList();
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
