import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

part 'new_training_event.dart';
part 'new_training_state.dart';

class NewTrainingBloc extends Bloc<NewTrainingEvent, NewTrainingState> {
  NewTrainingBloc() : super(NewTrainingInitial()) {
    on<NewTrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void goToTrainingDivisionpage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TrainingDivisionPage()),
    );
  }
}
