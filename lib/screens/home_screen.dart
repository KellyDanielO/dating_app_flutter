import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../helpers/functions.dart';
import '../widgets/bottom_nav_widget.dart';
import '../widgets/love_card_widget.dart';
import '../widgets/user_card_widget.dart';
import 'match_details.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconWidget> icons = [
    IconWidget(
      activeIcon: CupertinoIcons.house_fill,
      icon: CupertinoIcons.house,
    ),
    IconWidget(
      activeIcon: CupertinoIcons.heart_fill,
      icon: CupertinoIcons.heart,
    ),
    IconWidget(
      activeIcon: CupertinoIcons.chat_bubble_text_fill,
      icon: CupertinoIcons.chat_bubble_text,
      bageCount: 3,
    ),
  ];

  List<String> images = [
    'assets/images/avatar-2.png',
    'assets/images/avatar-3.png',
    'assets/images/avatar-4.png',
    'assets/images/avatar-3.png',
    'assets/images/avatar-2.png',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: AppColors.whiteColor,
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.superLightPink,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 10,
                                  height: 2.5,
                                  decoration: const BoxDecoration(
                                      color: AppColors.blackColor),
                                ),
                                const SizedBox(height: 3),
                                Container(
                                  width: 20,
                                  height: 2.5,
                                  decoration: const BoxDecoration(
                                      color: AppColors.blackColor),
                                ),
                                const SizedBox(height: 3),
                                Container(
                                  width: 15,
                                  height: 2.5,
                                  decoration: const BoxDecoration(
                                      color: AppColors.blackColor),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.bell),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Discover',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                      const SizedBox(height: 15),
                      // Search Box Area
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(slideUpRoute(const SearchScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.boxGreyColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                CupertinoIcons.search,
                                color: AppColors.textGreyColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Search Tech Sis/Bro',
                                style: TextStyle(
                                  color: AppColors.textGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Search Box Area End
                      const SizedBox(height: 10),
                      // User Status
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15.0),
                                    child: const UserCircleCard(
                                        image: 'assets/images/avatar-1.png'),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: AppColors.gradient,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 15),
                              Row(
                                children: List.generate(
                                  images.length,
                                  (index) => Container(
                                    margin: const EdgeInsets.only(right: 20.0),
                                    child: UserCircleCard(image: images[index]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // user status end
                      // Near You section Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Near You',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins Bold'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'view all',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.textGreyColor),
                            ),
                          ),
                        ],
                      ),
                      // Near You section end
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const MatchDetails(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: AppColors.gradient2,
                                borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.only(right: 10),
                            child: LoveCardWidget(
                              width: width * .8,
                              height: height,
                              imagePath: 'assets/images/user-image.png',
                              location: 'Abuja, Nigeria',
                              matchPercent: '60',
                              name: 'Jennifer Coker',
                              stack: 'UX Writer',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * .1),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: BottomNavigationWidget(
                width: width,
                height: height,
                icons: icons,
                currentIndex: currentIndex,
                onPressed: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
