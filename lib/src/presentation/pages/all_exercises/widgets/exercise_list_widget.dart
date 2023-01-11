import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_controller.dart';
import 'package:provider/provider.dart';

class ExerciseListWidget extends StatelessWidget {
  const ExerciseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllExercisesController>(
        builder: (context, controller, child) {
      if (controller.pageState == AllExercisesPageState.error) {
        return Expanded(
          child: Center(
            child: Text(
              controller.errorMessage!,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      if (controller.pageState == AllExercisesPageState.loading) {
        return const Expanded(
          child: Center(
            child: CircularProgressIndicator(
              color: CustomColors.darkerGreen,
            ),
          ),
        );
      }
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.exerciseList.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.exerciseList[index].name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded),
                ],
              );
            },
            separatorBuilder: (context, index) => const Divider(thickness: 2),
          ),
        ),
      );
    });
  }
}
