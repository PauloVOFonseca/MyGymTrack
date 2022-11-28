import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gym_track/src/application/constants/muscle_list.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/bloc/all_exercises_bloc.dart';

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
    bloc.add(FetchExercisesList());
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
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                  color: CustomColors.black,
                  iconSize: 30,
                ),
                const SizedBox(width: 100),
                Text(
                  'Exercícios',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: BlocBuilder<AllExercisesBloc, AllExercisesState>(
                bloc: bloc,
                builder: (context, state) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: MUSCLE_LIST.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          // pageController.selected.value = index;
                          // pageController.updateExerciseList(MUSCLE_LIST[index]);
                          setState(() {});
                        },
                        child: Text(
                          MUSCLE_LIST[index],
                          style:
                              // pageController.selected.value == index
                              //     ? Theme.of(context)
                              //         .textTheme
                              //         .labelMedium
                              //         ?.copyWith(
                              //           color: CustomColors.darkerGreen,
                              //         )
                              //     :
                              Theme.of(context).textTheme.labelMedium,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<AllExercisesBloc, AllExercisesState>(
                bloc: bloc,
                builder: (context, state) {
                  if (state is AllExercisesLoaded) {
                    return ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.exercisesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          state.exercisesList[index].name,
                          style: Theme.of(context).textTheme.bodyText1,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const Divider(thickness: 2),
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
            ),
          ],
        ),
      ),
    );
  }
}
