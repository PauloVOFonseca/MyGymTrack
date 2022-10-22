import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/constants/images_assets.dart';
import 'package:my_gym_track/src/presentation/pages/all_exercises/all_exercises_page.dart';
import 'package:my_gym_track/src/presentation/pages/home/widgets/item_template_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Treino 2 de 30',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemTemplateWidget(
                    title: 'Treino A',
                    photoName: ImageAssets.dumbell,
                    caption: 'Próximo treino: Treino B',
                    width: (MediaQuery.of(context).size.width) / 2.2,
                  ),
                  ItemTemplateWidget(
                    title: 'Todos os treinos',
                    photoName: ImageAssets.gym,
                    caption: 'Acesse os treinos atuais',
                    width: (MediaQuery.of(context).size.width) / 2.2,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const ItemTemplateWidget(
                title: 'Histórico',
                photoName: ImageAssets.clock,
                caption: 'Acesse o histórico de treinos',
              ),
              const SizedBox(height: 16),
              // const CalendarWidget(),
              // const SizedBox(height: 16),
              const ItemTemplateWidget(title: 'Novo treino'),
              const SizedBox(height: 16),
              ItemTemplateWidget(
                title: 'Todos exercícios',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AllExercisesPage()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
