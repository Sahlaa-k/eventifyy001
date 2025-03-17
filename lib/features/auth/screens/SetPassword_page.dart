
import 'package:eventify001/features/bottom_navigation/bottom_navigation_bar.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';
class SetpasswordPage extends StatefulWidget {
  const SetpasswordPage({super.key});

  @override
  State<SetpasswordPage> createState() => _SetpasswordPageState();
}

class _SetpasswordPageState extends State<SetpasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width *  1.5,
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
                  SizedBox(height: height*.4,),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * .08, right: width * .08,bottom: width * .08),
                    child: TextFormField(
                      decoration: InputDecoration(
                        // labelText: 'Enter your text',
                        hintText: 'Enter a Password',
                        hintStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w600),
                        prefixIcon: Icon(Icons.password),
                        // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*.02),
                          borderSide:
                              BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*.02),
                          borderSide:
                              BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * .08, right: width * .08,bottom: width * .2),
                    child: TextFormField(
                      decoration: InputDecoration(
                        // labelText: 'Enter your text',
                        hintText: 'Enter a Confirm Password',
                        hintStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w600),
                        prefixIcon: Icon(Icons.password),
                        // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*.02),
                          borderSide:
                              BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*.02),
                          borderSide:
                              BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationPage(),));
                    },
                    child: Container(
                      height: height*.06,
                      width: width*.7,
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.circular(width*.02)
                      ),
                      child: Center(child: Text("Sign Up",style: GoogleFonts.poppins(color: Colors.white,fontSize: height*.02,fontWeight: FontWeight.w500),),),
                    ),
                  ),
                  // SizedBox(height: height*.2,),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}