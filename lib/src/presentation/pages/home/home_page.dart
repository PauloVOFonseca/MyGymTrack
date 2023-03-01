import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gym_track/src/application/constants/images_assets.dart';
import 'package:my_gym_track/src/application/routes/route_handler.dart';
import 'package:my_gym_track/src/application/routes/route_service.dart';
import 'package:my_gym_track/src/presentation/pages/home/widgets/item_template_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    setNavigationContext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              //TODO that width only exist if someone create a training
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
              ItemTemplateWidget(
                title: 'Novo treino',
                onTap: () => RouteService.instance.goToNewTrainingPage(),
              ),
              const SizedBox(height: 16),
              ItemTemplateWidget(
                title: 'Todos exercícios',
                onTap: () => RouteService.instance.goToAllExercisesPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setNavigationContext() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GetIt.I.get<RouteHandler>().configure(context);
    });
  }
}
