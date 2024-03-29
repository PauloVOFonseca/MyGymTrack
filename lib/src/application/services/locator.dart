import 'package:get_it/get_it.dart';
import 'package:my_gym_track/src/application/routes/route_handler.dart';
import 'package:my_gym_track/src/application/routes/route_handler_imp.dart';
import 'package:my_gym_track/src/application/routes/route_service.dart';
import 'package:my_gym_track/src/data/data_sources/exercises/exercises_datasource.dart';
import 'package:my_gym_track/src/data/data_sources/exercises/exercises_datasource_imp.dart';
import 'package:my_gym_track/src/data/repositories/exercises/exercises_repository_imp.dart';
import 'package:my_gym_track/src/domain/repositories/exercises/exercises_repository.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase.dart';
import 'package:my_gym_track/src/domain/use_cases/get_all_exercises/get_all_exercises_usecase_imp.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<RouteHandler>(() => RouteHandlerImp());
  getIt.registerLazySingleton<RouteService>(() => RouteService());
  getIt.registerLazySingleton<ExercisesDatasource>(
      () => ExercisesDatasourceImp());
  getIt.registerLazySingleton<ExercisesRepository>(
      () => ExercisesRepositoryImp());
  getIt.registerLazySingleton<GetAllExercisesUsecase>(
      () => GetAllExercisesUsecaseImp());
}
