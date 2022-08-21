import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';

class ItemTemplateWidget extends StatelessWidget {
  final String title;
  const ItemTemplateWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 125,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: CustomColors.lighterGrey,
        border: Border.all(color: CustomColors.primaryGreen, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(color: CustomColors.white),
        ),
      ),
    );
  }
}
