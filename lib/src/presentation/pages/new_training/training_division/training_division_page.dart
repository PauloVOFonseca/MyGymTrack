import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/widgets/muscle_tag_tab_bar_widget.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/widgets/select_exercise_list_widget.dart';

class TrainingDivisionPage extends StatefulWidget {
  const TrainingDivisionPage({Key? key}) : super(key: key);

  @override
  State<TrainingDivisionPage> createState() => _TrainingDivisionPageState();
}

class _TrainingDivisionPageState extends State<TrainingDivisionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        title: const Text("Exercícios"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: CustomColors.black,
          iconSize: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MuscleTagTabBarWidget(),
            SelectExerciseListWidget(),
          ],
        ),
      ),
    );
  }
}
