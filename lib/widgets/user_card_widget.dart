import 'package:flutter/material.dart';

import '../constants/colors.dart';

class UserCircleCard extends StatelessWidget {
  final String image;
  const UserCircleCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.gradient,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 25,
        ),
      ),
    );
  }
}
