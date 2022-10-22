import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';

class ItemTemplateWidget extends StatelessWidget {
  final String title;
  final String? caption;
  final String? photoName;
  final Function()? onTap;
  final double? width;
  const ItemTemplateWidget({
    Key? key,
    required this.title,
    this.photoName,
    this.caption,
    this.onTap,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: 125,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: CustomColors.lighterGrey,
          border: Border.all(color: CustomColors.primaryGreen, width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          image: photoName != null
              ? DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(photoName!),
                  opacity: 0.6,
                )
              : null,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: CustomColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ),
    );
  }
}
