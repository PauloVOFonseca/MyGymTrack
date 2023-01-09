import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:my_gym_track/src/domain/entities/training/training_sheet_entity.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

part 'new_training_event.dart';
part 'new_training_state.dart';

class NewTrainingBloc extends Bloc<NewTrainingEvent, NewTrainingState> {
  NewTrainingBloc() : super(const NewTrainingInitial()) {
    on<UpdateTrainingSheetEvent>((event, emit) async {
      //emit(AllExercisesLoading());
      //await _onExerciseFetch(event, emit);
    });
  }

  void goToTrainingDivisionpage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TrainingDivisionPage()),
    );
  }
}
