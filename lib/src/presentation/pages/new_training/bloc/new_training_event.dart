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
