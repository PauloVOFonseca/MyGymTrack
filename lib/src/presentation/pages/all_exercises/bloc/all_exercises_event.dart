part of 'all_exercises_bloc.dart';

abstract class AllExercisesEvent extends Equatable {
  const AllExercisesEvent();

  @override
  List<Object> get props => [];
}

class FetchExercisesList extends AllExercisesEvent{}

class UpdateExercisesList extends AllExercisesEvent{}