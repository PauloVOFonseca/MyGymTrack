import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/bloc/new_training_bloc.dart';

class SelectExerciseListWidget extends StatefulWidget {
  final NewTrainingBloc bloc;
  const SelectExerciseListWidget({super.key, required this.bloc});

  @override
  State<SelectExerciseListWidget> createState() =>
      _SelectExerciseListWidgetState();
}

class _SelectExerciseListWidgetState extends State<SelectExerciseListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewTrainingBloc, NewTrainingState>(
        bloc: widget.bloc,
        builder: (context, state) {
          if (state is ExercisesListLoaded) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: state.exercisesList.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.exercisesList[index].name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Checkbox(
                        value: false,
                        onChanged: (value) {
                          print(value);
                        }),
                  ],
                );
              },
              separatorBuilder: (context, index) => const Divider(thickness: 2),
            );
          }
          if (state is ExercisesListError) {
            return Center(
              child: Text(
                state.errorMessage,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: CustomColors.darkerGreen,
            ),
          );
        },
      ),
    );
  }
}
