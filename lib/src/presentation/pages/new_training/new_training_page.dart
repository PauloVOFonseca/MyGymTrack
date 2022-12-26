import 'package:flutter/material.dart';
import 'package:my_gym_track/src/presentation/widgets/custom_app_bar.dart';

class NewTrainingPage extends StatefulWidget {
  const NewTrainingPage({Key? key}) : super(key: key);

  @override
  State<NewTrainingPage> createState() => _NewTrainingPageState();
}

class _NewTrainingPageState extends State<NewTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 32),
            CustomAppBar(title: "Novo treino"),
          ],
        ),
      ),
    );
  }
}
