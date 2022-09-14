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
      body: Column(
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
              const Text(
                'Exercícios',
                style: TextStyle(
                  color: CustomColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row()
        ],
      ),
    );
  }
}
