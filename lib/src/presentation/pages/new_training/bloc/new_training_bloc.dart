import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_gym_track/src/domain/entities/training/training_sheet_entity.dart';

part 'new_training_event.dart';
part 'new_training_state.dart';

class NewTrainingBloc extends Bloc<NewTrainingEvent, NewTrainingState> {
  NewTrainingBloc() : super(const NewTrainingInitial()) {
    on<UpdateTrainingSheetEvent>((event, emit) async {
      //emit(AllExercisesLoading());
      //await _onExerciseFetch(event, emit);
    });
  }
}
