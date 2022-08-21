import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ItemTemplateWidget(title: 'Treino A'),
            SizedBox(height: 10),
            ItemTemplateWidget(title: 'Todos os treinos'),
            SizedBox(height: 10),
            ItemTemplateWidget(title: 'Histórico'),
            SizedBox(height: 10),
            ItemTemplateWidget(title: 'Calendário'),
            SizedBox(height: 10),
            ItemTemplateWidget(title: 'Novo treino'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
