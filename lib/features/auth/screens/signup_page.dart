import 'package:eventify001/features/auth/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';
import '../../../main.dart';
import '../../bottom_navigation/bottom_navigation_bar.dart';
import '../../bottom_navigation/home/home_page.dart';
import '../controller/auth_controller.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool reLock = false;
  signUp() async {
    final authController = ref.read(authControllerProvider);

    try {
      await authController.signUpWithEmailPassword(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationPage()),(route) => false,
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = "Signup failed. Please try again.";

      if (e.code == 'email-already-in-use') {
        errorMessage = "This email is already in use. Try logging in instead.";
      } else if (e.code == 'invalid-email') {
        errorMessage = "The email address is not valid.";
      } else if (e.code == 'weak-password') {
        errorMessage = "Password is too weak. Try a stronger password.";
      } else if (e.code == 'operation-not-allowed') {
        errorMessage = "Email/password accounts are not enabled.";
      } else {
        errorMessage = e.message ?? "An unknown error occurred.";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width * 1.5,
          height: height * 1,
          child: Stack(
            children: [
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(right: width * .05),
                child: Container(
                  height: height * .3,
                  width: width * .8,
                  //  child: Text("data",style: GoogleFonts.poppins(),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(width * .3),
                        bottomRight: Radius.circular(width * .5)),
                    color: ColorConstant.primaryColor,
                  ),
                  //  decoration: BoxDecoration(border)),color: Colors.black,),
                ),
              )),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(left: width * .2),
                child: Container(
                  height: height * .38,
                  width: width * .8,
                  //  child: Text("data",style: GoogleFonts.poppins(),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(width * .5),
                    ),
                    color: ColorConstant.primaryColor,
                  ),
                  //  decoration: BoxDecoration(border)),color: Colors.black,),
                ),
              )),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * .3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * .08,
                        right: width * .08,
                        bottom: width * .08),
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        // labelText: 'Enter your text',
                        hintText: 'Enter a Username',
                        hintStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w600),
                        prefixIcon: Icon(Icons.account_circle_outlined),
                        // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * .08,
                        right: width * .08,
                        bottom: width * .08),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        // labelText: 'Enter your text',
                        hintText: 'Enter a Mobile or E-mail',
                        hintStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w600),
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                        // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * .08,
                        right: width * .08,
                        bottom: width * .2),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: reLock ? true : false,
                      decoration: InputDecoration(
                        // labelText: 'Enter your text',
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w600),
                        prefixIcon: GestureDetector(
                          onTap: () {
                            reLock = !reLock;
                            setState(() {});
                          },
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.02),
                            child: Icon(reLock
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * .02),
                          borderSide: BorderSide(
                              color: ColorConstant.primaryColor,
                              width: width * .006),
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      signUp();
                    },
                    child: Container(
                      height: height * .06,
                      width: width * .7,
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(width * .02)),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: height * .02,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account",
                        style: TextStyle(
                            fontSize: height * .02,
                            fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(width * .015),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: ColorConstant.primaryColor,
                                fontSize: height * .02,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
