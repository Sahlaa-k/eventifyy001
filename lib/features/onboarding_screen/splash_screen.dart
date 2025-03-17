import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/color_constant.dart';
import '../../main.dart';
import 'onboarding_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then(
      (value) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingPages(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.primaryColor,
        body: Center(
          child: Text(
            " Eventify ",
            style: GoogleFonts.laBelleAurore(color: ColorConstant.backgroundColor,
        fontSize: width*0.12,

          )),
        ));
  }
}
