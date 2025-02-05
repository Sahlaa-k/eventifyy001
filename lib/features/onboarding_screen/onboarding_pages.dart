import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';
import '../login/login_page.dart';
import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';
import 'onboarding_page4.dart';
import 'onboarding_page5.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  PageController pageController = PageController();
  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  List<Map<String, dynamic>> onBoardingData = [
    {"page": onBoarding1()},
    {"page": onBoarding2()},
    {"page": onBoarding3()},
    {"page": onBoarding4()},
    {"page": onBoarding5()},
  ];

  @override
  void dispose() {
    pageController.dispose();
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: onBoardingData.length,
            onPageChanged: (value) {
              currentIndex.value = value;
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    child: SizedBox(
                      height: height * 1,
                      width: width * 1,
                      child: onBoardingData[index]["page"],
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: onBoardingData.length,
                    effect: WormEffect(
                      activeDotColor: ColorConstant.red,
                      dotColor: ColorConstant.grey,
                      dotHeight: width * 0.02,
                      dotWidth: width * 0.02,
                    ),
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: currentIndex,
                    builder: (context, index, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (index != onBoardingData.length - 1)
                            GestureDetector(
                              onTap: () {
                                pageController.animateToPage(
                                  onBoardingData.length - 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                "Skip Now",
                                style: TextStyle(
                                    color: ColorConstant.red,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),

                          // Next / Done Button
                          GestureDetector(
                            onTap: () {
                              if (index == onBoardingData.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              } else {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: index == onBoardingData.length - 1
                                ? Container(
                              height: height * 0.06,
                              width: width * 0.83,
                              margin: EdgeInsets.all(width * 0.03),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(width * 0.02),
                                ),
                                color: ColorConstant.red,
                              ),
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color:
                                      ColorConstant.backgroundColor,
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                                : Text(
                              "Next",
                              style: TextStyle(
                                  color: ColorConstant.red,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
