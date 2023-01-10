part of 'new_training_bloc.dart';

abstract class NewTrainingEvent extends Equatable {
  const NewTrainingEvent();

  @override
  List<Object> get props => [];
}

class UpdateTrainingSheetEvent extends NewTrainingEvent {
  final TrainingSheetEntity trainingSheet;

  const UpdateTrainingSheetEvent({required this.trainingSheet});
}

class FetchExercisesList extends NewTrainingEvent {
  final String? muscleGroup;

  const FetchExercisesList({this.muscleGroup});
}

class UpdateExercisesList extends NewTrainingEvent {
  final String muscleGroup;

  const UpdateExercisesList({required this.muscleGroup});
}
