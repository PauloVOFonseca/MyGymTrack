part of 'all_exercises_bloc.dart';

abstract class AllExercisesEvent extends Equatable {
  const AllExercisesEvent();

  @override
  List<Object> get props => [];
}

class FetchExercisesList extends AllExercisesEvent{
  final String? muscleGroup;

  const FetchExercisesList({this.muscleGroup});
}

class UpdateExercisesList extends AllExercisesEvent{
  final String muscleGroup;

  const UpdateExercisesList({required this.muscleGroup});
}