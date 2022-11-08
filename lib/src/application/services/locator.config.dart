// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_sources/exercises/exercises_datasource.dart' as _i3;
import '../../data/data_sources/exercises/exercises_datasource_imp.dart' as _i4;
import '../../data/repositories/exercises/exercises_repository_imp.dart' as _i6;
import '../../domain/repositories/exercises/exercises_repository.dart' as _i5;
import '../../domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart'
    as _i7;
import '../../domain/use_cases/get_all_exercises/get_all_exercises_usecase_imp.dart'
    as _i8;
import '../../presentation/pages/all_exercises/all_exercises_controller.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ExercisesDatasource>(() => _i4.ExercisesDatasourceImp());
  gh.factory<_i5.ExercisesRepository>(
      () => _i6.ExercisesRepositoryImp(get<_i3.ExercisesDatasource>()));
  gh.factory<_i7.GetAllExercisesUsecase>(
      () => _i8.GetAllExercisesUsecaseImp(get<_i5.ExercisesRepository>()));
  gh.factory<_i9.AllExercisesController>(
      () => _i9.AllExercisesController(get<_i7.GetAllExercisesUsecase>()));
  return get;
}
