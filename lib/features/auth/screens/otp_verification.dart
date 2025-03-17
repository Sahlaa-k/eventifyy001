
import 'package:eventify001/features/bottom_navigation/bottom_navigation_bar.dart';
import 'package:eventify001/features/bottom_navigation/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';


import '../../../core/constants/color_constant.dart';
import '../../../main.dart';
class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondaryColor,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height* 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(height*.07),
                        bottomRight: Radius.circular(height*.5)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text(
                      'OTP Verification',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w600,
                          fontSize: height*.02,
                          color: const Color(0xff474646)),
                    ),
                    Text(
                      'We Will send you a one time password on',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: height*.018,
                          color: ColorConstant.thirdColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'this',
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: height*.018,
                              color: ColorConstant.thirdColor),
                        ),
                        Text(
                          ' Email Address',
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w600,
                              fontSize: height*.018,
                              color: ColorConstant.thirdColor),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*.008, bottom: height*.02),
                      child: Text("email",
                        // widget.email,
                        style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w600,
                            fontSize: height*.018,
                            color: ColorConstant.thirdColor),
                      ),
                    ),

                    Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                  height: height * 0.06,
                  width: width * 0.125,
                  textStyle: TextStyle(fontSize: height*.025,fontWeight: FontWeight.w700),
                  decoration: BoxDecoration(
                    
                      border: Border.all(
                        
                        color: ColorConstant.secondaryColor,
                        width: width*.01,
                      ),
                      borderRadius: BorderRadius.circular(width*.05))),
            ),
            

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       width: width*.12,
                    //       // height: 42,
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //           color: const Color(0xffF6F6F6),
                    //           // borderRadius: BorderRadius.circular(90),
                    //           border:
                    //               Border.all(color: const Color(0xffB7A6FC))),
                    //       child: TextFormField(
                            
                    //         keyboardType: TextInputType.numberWithOptions(),
                    //         maxLength: 1,
                            
                    //         // controller: _four,
                    //         decoration:
                    //             const InputDecoration(border: InputBorder.none),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 10),
                    //       child: Container(
                    //         width: 42,
                    //         height: 42,
                    //         decoration: BoxDecoration(
                    //             color: const Color(0xffF6F6F6),
                    //             borderRadius: BorderRadius.circular(90),
                    //             border:
                    //                 Border.all(color: const Color(0xffB7A6FC))),
                    //         child: TextFormField(
                    //           // controller: _one,
                    //           decoration: const InputDecoration(
                    //               border: InputBorder.none),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 10),
                    //       child: Container(
                    //         width: 42,
                    //         height: 42,
                    //         decoration: BoxDecoration(
                    //             color: const Color(0xffF6F6F6),
                    //             borderRadius: BorderRadius.circular(90),
                    //             border:
                    //                 Border.all(color: const Color(0xffB7A6FC))),
                    //         child: TextFormField(
                    //           // controller: _two,
                    //           decoration: const InputDecoration(
                    //               border: InputBorder.none),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 10),
                    //       child: Container(
                    //         width: 42,
                    //         height: 42,
                    //         decoration: BoxDecoration(
                    //             color: const Color(0xffF6F6F6),
                    //             borderRadius: BorderRadius.circular(90),
                    //             border:
                    //                 Border.all(color: const Color(0xffB7A6FC))),
                    //         child: TextFormField(
                    //           // controller: _three,
                    //           decoration: const InputDecoration(
                    //               border: InputBorder.none),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: height*.02, bottom: height*.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Do not send OTP  ?',
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: height*.015,
                                color: Colors.black),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Text(
                              '  Sent OTP',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height*.018,
                                  color: ColorConstant.primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => BottomNavigationPage(),), (route) => false,);
                          },
                          child: Container(
                            width: width*.6,
                            height: height*.05,
                            decoration: BoxDecoration(
                                color: ColorConstant.primaryColor,
                                borderRadius: BorderRadius.circular(width*.02)),
                            child: Center(
                              child: Text(
                                'Submit',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height*.019,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //=========================================================================================================

              // Padding(
              //   padding: const EdgeInsets.only(top: 25, bottom: 25),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       // Text(
              //       //   'You  have an account ?   ',
              //       //   style: GoogleFonts.poppins(
              //       //       fontWeight: FontWeight.w600,
              //       //       fontSize: 12,
              //       //       color: Colors.white),
              //       // ),
              //       // InkWell(
              //       //   onTap: () {
                        
              //       //   },
              //       //   child: Text(
              //       //     'Login',
              //       //     style: GoogleFonts.poppins(
              //       //         fontWeight: FontWeight.w700,
              //       //         fontSize: 12,
              //       //         color: Colors.white),
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}