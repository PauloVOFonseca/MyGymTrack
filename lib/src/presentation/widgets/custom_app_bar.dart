import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: CustomColors.black,
          iconSize: 30,
        ),
        const SizedBox(width: 100),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
