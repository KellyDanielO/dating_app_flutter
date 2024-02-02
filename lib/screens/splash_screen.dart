import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_btn.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: width * .55,
              child: Image.asset('assets/images/splash.png'),
            ),
            SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find your \nPerfect Match',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Find Amazing Single Tech Sis/Bro',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: 'Get Started',
              textColor: AppColors.darkPink,
              btnColor: AppColors.whiteColor,
              width: width,
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
