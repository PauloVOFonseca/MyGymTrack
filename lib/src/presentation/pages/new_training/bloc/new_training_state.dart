part of 'new_training_bloc.dart';

abstract class NewTrainingState extends Equatable {
  const NewTrainingState();

  @override
  List<Object> get props => [];
}

class NewTrainingInitial extends NewTrainingState {
  const NewTrainingInitial();
}

class UpdateTrainingSheet extends NewTrainingState {
  final TrainingSheetEntity trainingSheet;

  const UpdateTrainingSheet({required this.trainingSheet});

  @override
  List<Object> get props => [trainingSheet];
}
