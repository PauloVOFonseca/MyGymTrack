import 'package:flutter/material.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/bloc/all_exercises_bloc.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/widgets/exercise_list_widget.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/widgets/muscle_group_tab_bar_widget.dart';
import 'package:my_gym_track/src/presentation/widgets/custom_app_bar.dart';

class AllExercisesPage extends StatefulWidget {
  const AllExercisesPage({Key? key}) : super(key: key);

  @override
  State<AllExercisesPage> createState() => _AllExercisesPageState();
}

class _AllExercisesPageState extends State<AllExercisesPage> {
  final AllExercisesBloc bloc = AllExercisesBloc();

  @override
  void initState() {
    super.initState();
    bloc.add(const FetchExercisesList());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const CustomAppBar(title: "Exercícios"),
            const SizedBox(height: 8),
            MuscleGroupTabBarWidget(bloc: bloc),
            ExerciseListWidget(bloc: bloc),
          ],
        ),
      ),
    );
  }
}
