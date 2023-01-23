import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/routes/route_service.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_controller.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/widgets/exercise_list_widget.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/widgets/muscle_group_tab_bar_widget.dart';
import 'package:provider/provider.dart';

class AllExercisesPage extends StatefulWidget {
  const AllExercisesPage({Key? key}) : super(key: key);

  @override
  State<AllExercisesPage> createState() => _AllExercisesPageState();
}

class _AllExercisesPageState extends State<AllExercisesPage> {
  late AllExercisesController pageController;

  @override
  Widget build(BuildContext context) {
    pageController = context.watch<AllExercisesController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        title: const Text("Exercícios"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => RouteService.instance.pop(),
          icon: const Icon(Icons.arrow_back_ios),
          color: CustomColors.black,
          iconSize: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 16),
            MuscleGroupTabBarWidget(),
            ExerciseListWidget(),
          ],
        ),
      ),
    );
  }
}
