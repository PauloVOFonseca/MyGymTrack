import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/bloc/all_exercises_bloc.dart';

class ExerciseListWidget extends StatefulWidget {
  final AllExercisesBloc bloc;
  const ExerciseListWidget({super.key, required this.bloc});

  @override
  State<ExerciseListWidget> createState() => _ExerciseListWidgetState();
}

class _ExerciseListWidgetState extends State<ExerciseListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AllExercisesBloc, AllExercisesState>(
        bloc: widget.bloc,
        builder: (context, state) {
          if (state is AllExercisesLoaded) {
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
                    const Icon(Icons.arrow_forward_ios_rounded),
                  ],
                );
              },
              separatorBuilder: (context, index) => const Divider(thickness: 2),
            );
          }
          if (state is AllExercisesError) {
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
