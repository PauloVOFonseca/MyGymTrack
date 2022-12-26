import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';
import 'package:my_gym_track/src/presentation/pages/new_training/widgets/new_training_sheet_widget.dart';

class NewTrainingPage extends StatefulWidget {
  const NewTrainingPage({Key? key}) : super(key: key);

  @override
  State<NewTrainingPage> createState() => _NewTrainingPageState();
}

class _NewTrainingPageState extends State<NewTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: CustomColors.primaryGreen,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        title: const Text("Novo treino"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: CustomColors.black,
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.save_outlined),
            color: CustomColors.black,
            iconSize: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 16),
            NewTrainingSheetWidget(title: 'true'),
          ],
        ),
      ),
    );
  }
}
