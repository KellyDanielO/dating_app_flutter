import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
    required this.width,
    required this.height,
    required this.icons,
    required this.currentIndex,
    required this.onPressed,
  });

  final double width;
  final double height;
  final List<IconWidget> icons;
  final int currentIndex;
  final void Function(int value) onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .8,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.bottomNavColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          icons.length,
          (index) => IconButton(
            onPressed: () => onPressed(index),
            icon: icons[index].bageCount != null
                ? Badge.count(
                  count: icons[index].bageCount ?? 0,
                  child: Icon(
                      currentIndex == index
                          ? icons[index].activeIcon
                          : icons[index].icon,
                      color: currentIndex == index
                          ? AppColors.whiteColor
                          : AppColors.iconGreyColor,
                      size: 28,
                    ),
                )
                : Icon(
                    currentIndex == index
                        ? icons[index].activeIcon
                        : icons[index].icon,
                    color: currentIndex == index
                        ? AppColors.whiteColor
                        : AppColors.iconGreyColor,
                      size: 28,
                  ),
          ),
        ),
      ),
    );
  }
}

class IconWidget {
  final IconData activeIcon;
  final IconData icon;
  final int? bageCount;

  IconWidget({required this.activeIcon, required this.icon, this.bageCount});
}
