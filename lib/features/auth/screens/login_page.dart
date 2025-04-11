import 'package:eventify001/core/constants/icon_constant.dart';
import 'package:eventify001/features/auth/controller/auth_controller.dart';
import 'package:eventify001/features/auth/screens/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/color_constant.dart';
import '../../../main.dart';
import '../../bottom_navigation/bottom_navigation_bar.dart';
import 'otp_verification.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool reLock = false;


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  login() async {
    final authController = ref.read(authControllerProvider);

    if (emailController.text.trim().isEmpty && passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter the details.")),
      );
      return;
    } else if (emailController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your email.")),
      );
      return;
    } else if (passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your password.")),
      );
      return;
    }

    try {
      await authController.signInWithEmailPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );


      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationPage()),(route) => false,
      );
    }
    on FirebaseAuthException catch (e) {
      String errorMessage = "Login failed. Please try again.";

      if (e.code == 'invalid-email') {
        errorMessage = "The email address is not valid.";
      } else if (e.code == 'user-not-found') {
        errorMessage = "No user found with this email.";
      } else if (e.code == 'wrong-password') {
        errorMessage = "Incorrect password. Please try again.";
      } else if (e.code == 'user-disabled') {
        errorMessage = "This account has been disabled.";
      } else if (e.code == 'too-many-requests') {
        errorMessage = "Too many login attempts. Try again later.";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
    catch (e) {
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
        physics: NeverScrollableScrollPhysics(),
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
                  // SizedBox(
                  //   height: height * .2,
                  // ),
                  // Text(
                  //   "Choose Your Account Type?!",
                  //   style: TextStyle(
                  //     color: ColorConstant.backgroundColor,
                  //       fontSize: height * .02,
                  //       fontWeight: FontWeight.w600),
                  // ),
                  // Padding(
                  //   padding:  EdgeInsets.only(left: width*0.25,right: width*0.01),
                  //   child: Row(
                  //
                  //     children: [
                  //
                  //       Radio(value:"male",
                  //         groupValue: gender,
                  //         onChanged:(value) {
                  //           setState(() {
                  //             gender=value.toString();
                  //           });
                  //         },),
                  //
                  //       Text("Male"),
                  //       Radio(value: "female",
                  //         groupValue: gender,
                  //         onChanged:(value) {
                  //           setState(() {
                  //             gender=value.toString();
                  //           });
                  //         },),
                  //       Text("female"),
                  //     ],
                  //   ),
                  // ),

                  SizedBox(
                    height: height * .35,
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
                        hintText: 'Enter Mobile or E-mail',
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
                      login();
                    },
                    child: Container(
                      height: height * .06,
                      width: width * .7,
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(width * .02)),
                      child: Center(
                        child: Text(
                          "LogIn",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: height * .02,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: height * .02,
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => OtpVerification(),
                  //         ));
                  //   },
                  //   child: Container(
                  //     height: height * .06,
                  //     width: width * .7,
                  //     decoration: BoxDecoration(
                  //         // border: Border.all(color: ColorConstant.primaryColor,width: width*0.004),
                  //         color: ColorConstant.primaryColor,
                  //         borderRadius: BorderRadius.circular(width * .02)),
                  //     child: Center(
                  //       child: Text(
                  //         "OTP sign in",
                  //         style: GoogleFonts.poppins(
                  //             color: ColorConstant.backgroundColor,
                  //             fontSize: height * .02,
                  //             fontWeight: FontWeight.w500),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.03, right: width * 0.03),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: ColorConstant
                                .grey, // same as background or slightly darker
                            thickness: 1,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                            color: ColorConstant.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: ColorConstant.grey,
                            thickness: 1,
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Center(
                      child: GestureDetector(
                    onTap: () async {
                      try {
                        await ref
                            .read(authControllerProvider)
                            .signInWithGoogle();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigationPage()),
                        );
                      } on FirebaseAuthException catch (e) {
                        String errorMessage =
                            "Google Sign-In failed. Please try again.";

                        if (e.code ==
                            'account-exists-with-different-credential') {
                          errorMessage =
                              "This account exists with a different sign-in method.";
                        } else if (e.code == 'invalid-credential') {
                          errorMessage =
                              "Invalid credentials. Please try again.";
                        } else if (e.code == 'user-disabled') {
                          errorMessage = "This account has been disabled.";
                        } else if (e.code == 'operation-not-allowed') {
                          errorMessage =
                              "Google sign-in is not enabled for this project.";
                        } else if (e.code == 'network-request-failed') {
                          errorMessage =
                              "Network error. Please check your internet connection.";
                        } else {
                          errorMessage =
                              e.message ?? "An unknown error occurred.";
                        }

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(errorMessage)),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Error: ${e.toString()}")),
                        );
                      }
                    },
                    child: SvgPicture.asset(
                      IconConstant.google,
                      width: width * 0.08,
                    ),
                  )),
                  SizedBox(
                    height: height * .15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account",
                        style: TextStyle(
                            fontSize: height * .02,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.all(width * .015),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ));
                            },
                            child: Text(
                              "Create Now",
                              style: TextStyle(
                                  color: ColorConstant.primaryColor,
                                  fontSize: height * .02,
                                  fontWeight: FontWeight.w600),
                            )),
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
