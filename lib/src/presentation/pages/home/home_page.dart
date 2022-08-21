import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/constants/images_assets.dart';
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
            children: const [
              Text(
                'Treino 2 de 30',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 16),
              ItemTemplateWidget(
                title: 'Treino A',
                photoName: ImageAssets.dumbell,
                caption: 'Próximo treino: Treino B',
              ),
              SizedBox(height: 16),
              ItemTemplateWidget(
                title: 'Todos os treinos',
                photoName: ImageAssets.gym,
                caption: 'Acesse os treinos atuais',
              ),
              SizedBox(height: 16),
              ItemTemplateWidget(
                title: 'Histórico',
                photoName: ImageAssets.clock,
                caption: 'Acesse o histórico de treinos',
              ),
              SizedBox(height: 16),
              ItemTemplateWidget(title: 'Calendário'),
              SizedBox(height: 16),
              ItemTemplateWidget(title: 'Novo treino'),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
