import 'dart:ui';

import 'package:dating_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Section 1
                  Container(
                    width: width,
                    height: height * .5,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/user-image.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 2.0, sigmaY: 2.0),
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 4),
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.darkShadeColor
                                        .withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        'She likes you!',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor,
                                                fontSize: 17),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: AppColors.gradient,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: const EdgeInsets.all(5),
                                        child: const Text(
                                          '60% match',
                                          style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 10,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Section 1 End

                  // Section 2
                  SizedBox(height: height * .03),
                  Text(
                    'Discover',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 31,
                        color: AppColors.textGreyColor2),
                  ),
                  const SizedBox(height: 1),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: AppColors.textGreyColor3,
                        size: 18,
                      ),
                      Text(
                        'Abuja, Nigeria',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.textGreyColor3,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 1),
                  Text(
                    'UX Writer',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.textGreyColor2),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "I work with a Fintech company in Abuja and I enjoy cooking and travelling. Let’s connect handsome Tech Bro.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.textGreyColor4),
                  ),
                  SizedBox(height: height * .05),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      decoration:
                          const BoxDecoration(color: AppColors.boxGreyColor2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '6+ Same Interests see all',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.textGreyColor2),
                          ),
                          const SizedBox(width: 5),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return AppColors.gradient.createShader(bounds);
                            },
                            child: Text(
                              'see all',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColors.darkPink,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.boxGreyColor3,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: AppColors.color1,
                          size: 28,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: AppColors.gradient,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          CupertinoIcons.heart_fill,
                          color: AppColors.whiteColor,
                          size: 28,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.boxGreyColor3,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          CupertinoIcons.chat_bubble_text,
                          color: AppColors.color2,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
