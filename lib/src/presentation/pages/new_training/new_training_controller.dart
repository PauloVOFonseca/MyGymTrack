import 'package:flutter/material.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/training_division/training_division_page.dart';

class NewTrainingController extends ChangeNotifier {

  void goToTrainingDivisionpage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TrainingDivisionPage()),
    );
  }
}
