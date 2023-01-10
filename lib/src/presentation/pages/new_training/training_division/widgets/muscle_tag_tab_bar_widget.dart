import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gym_track/src/application/constants/muscle_list.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/bloc/new_training_bloc.dart';

class MuscleTagTabBarWidget extends StatefulWidget {
  final NewTrainingBloc bloc;
  const MuscleTagTabBarWidget({super.key, required this.bloc});

  @override
  State<MuscleTagTabBarWidget> createState() => _MuscleTagTabBarWidgetState();
}

class _MuscleTagTabBarWidgetState extends State<MuscleTagTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: BlocBuilder<NewTrainingBloc, NewTrainingState>(
        bloc: widget.bloc,
        builder: (context, state) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: MUSCLE_LIST.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  widget.bloc.selected = index;
                  widget.bloc
                      .add(FetchExercisesList(muscleGroup: MUSCLE_LIST[index]));
                  setState(() {});
                },
                child: Text(
                  MUSCLE_LIST[index],
                  style: widget.bloc.selected == index
                      ? Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: CustomColors.darkerGreen,
                          )
                      : Theme.of(context).textTheme.labelMedium,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          );
        },
      ),
    );
  }
}
