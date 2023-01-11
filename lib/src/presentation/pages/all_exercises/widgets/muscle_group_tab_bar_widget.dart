import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/constants/muscle_list.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_controller.dart';
import 'package:provider/provider.dart';

class MuscleGroupTabBarWidget extends StatelessWidget {
  const MuscleGroupTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllExercisesController>(
        builder: (context, controller, child) {
      return SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: MUSCLE_LIST.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                controller.selected = index;
                controller
                    .fetchExercises(muscleGroup: MUSCLE_LIST[index]);
              },
              child: Text(
                MUSCLE_LIST[index],
                style: controller.selected == index
                    ? Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: CustomColors.darkerGreen,
                        )
                    : Theme.of(context).textTheme.labelMedium,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
        ),
      );
    });
  }
}
