import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';

class NewTrainingSheetWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const NewTrainingSheetWidget({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:  MediaQuery.of(context).size.width,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: CustomColors.lighterGrey,
          border: Border.all(color: CustomColors.primaryGreen, width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
