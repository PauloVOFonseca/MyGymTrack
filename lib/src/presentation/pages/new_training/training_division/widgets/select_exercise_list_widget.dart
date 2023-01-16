import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_controller.dart';
import 'package:provider/provider.dart';

class SelectExerciseListWidget extends StatelessWidget {
  const SelectExerciseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TrainingDivisionController>(
        builder: (context, controller, child) {
      if (controller.pageState == TrainingDivisionPageState.error) {
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
      if (controller.pageState == TrainingDivisionPageState.loading) {
        return const Expanded(
          child: Center(
            child: CircularProgressIndicator(
              color: CustomColors.darkerGreen,
            ),
          ),
        );
      }
      return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.exerciseList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () =>
                  controller.onSelectWorkout(controller.exerciseList[index]),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                color: controller
                        .exerciseIsAlreadyOnList(controller.exerciseList[index].id)
                    ? CustomColors.transparentGreen
                    : CustomColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.exerciseList[index].name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
