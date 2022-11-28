part of 'all_exercises_bloc.dart';

abstract class AllExercisesState extends Equatable {
  const AllExercisesState();
  
  @override
  List<Object> get props => [];
}

class AllExercisesLoading extends AllExercisesState {}

class AllExercisesLoaded extends AllExercisesState {
  final List<ExerciseEntity> exercisesList;

  const AllExercisesLoaded({required this.exercisesList});
}

class AllExercisesError extends AllExercisesState {
  final String errorMessage;
  const AllExercisesError({required this.errorMessage});
}

class AllExercisesEmpty extends AllExercisesState {}
