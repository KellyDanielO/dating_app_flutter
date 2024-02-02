import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoveCardWidget extends StatelessWidget {
  const LoveCardWidget({
    super.key,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.stack,
    required this.matchPercent,
  });
  final String imagePath;
  final String name;
  final String location;
  final String stack;
  final String matchPercent;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .5,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.whiteColor),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.textGreyColor,
                    size: 16,
                  ),
                  Text(
                    location,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.textGreyColor),
                  ),
                ],
              ),
              Text(
                stack,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.whiteColor),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: AppColors.gradient,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(5),
            child: Text(
              '$matchPercent% match',
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height / 2),
      Offset(size.width * 1 / 3, size.height),
      Offset(size.width * 2 / 3, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width * 2 / 3, 0),
      Offset(size.width * 1 / 3, 0)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
