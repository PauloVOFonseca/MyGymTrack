import 'package:flutter/material.dart';

import '../../../application/theme/custom_colors.dart';

class AllExercisesPage extends StatefulWidget {
  const AllExercisesPage({Key? key}) : super(key: key);

  @override
  State<AllExercisesPage> createState() => _AllExercisesPageState();
}

class _AllExercisesPageState extends State<AllExercisesPage> {
  final ValueNotifier<int> selected = ValueNotifier<int>(0);

  final List<String> muscleList = [
    'Todos',
    'Bíceps',
    'Tríceps',
    'Costas',
    'Peito',
    'Ombro',
    'Lombar',
    'Trapezio',
    'Antebraço',
    'Gluteo',
    'Quadriceps',
    'Posterior',
    'Panturrilha',
  ];

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
                valueListenable: selected,
                builder: (context, value, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: muscleList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => selected.value = index,
                        child: Text(
                          muscleList[index],
                          style: selected.value == index
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
          ],
        ),
      ),
    );
  }
}
