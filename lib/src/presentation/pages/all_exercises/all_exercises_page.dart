import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/constants/muscle_list.dart';
import 'package:my_gym_track/src/application/services/locator.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_controller.dart';
import '../../../application/theme/custom_colors.dart';

class AllExercisesPage extends StatefulWidget {
  const AllExercisesPage({Key? key}) : super(key: key);

  @override
  State<AllExercisesPage> createState() => _AllExercisesPageState();
}

class _AllExercisesPageState extends State<AllExercisesPage> {
  final AllExercisesController pageController = getIt<AllExercisesController>();

  @override
  void initState() {
    super.initState();
    pageController.getAllExercises();
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
              child: ValueListenableBuilder(
                valueListenable: pageController.selected,
                builder: (context, value, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: MUSCLE_LIST.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          pageController.selected.value = index;
                          pageController.updateExerciseList(MUSCLE_LIST[index]);
                          setState(() {});
                        },
                        child: Text(
                          MUSCLE_LIST[index],
                          style: pageController.selected.value == index
                              ? Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: CustomColors.darkerGreen,
                                  )
                              : Theme.of(context).textTheme.labelMedium,
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
              child: pageController.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: CustomColors.darkerGreen,
                      ),
                    )
                  : ValueListenableBuilder(
                      valueListenable: pageController.exercisesList,
                      builder: (context, value, child) {
                        return ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: pageController.exercisesList.value.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(
                              pageController.exercisesList.value[index].name,
                              style: Theme.of(context).textTheme.bodyText1,
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const Divider(thickness: 2),
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
