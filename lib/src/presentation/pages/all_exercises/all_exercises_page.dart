import 'package:flutter/material.dart';

import '../../../application/theme/custom_colors.dart';

class AllExercisesPage extends StatefulWidget {
  const AllExercisesPage({Key? key}) : super(key: key);

  @override
  State<AllExercisesPage> createState() => _AllExercisesPageState();
}

class _AllExercisesPageState extends State<AllExercisesPage> {
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
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: muscleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    muscleList[index],
                    style: Theme.of(context).textTheme.labelMedium,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
