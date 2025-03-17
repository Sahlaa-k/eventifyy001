import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

import '../../../core/constants/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> categories = [
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Wedding",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Haldi",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Pre-Wedding ",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Mehndi & Sangeet ",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "BirthDay",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Reception Party",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Anniversary",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Engagement",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Baby shower",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "House Warming ",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": " Farewell Party",
    },
  ];



  // final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.thirdColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: ColorConstant.backgroundColor,
                child: Container(
                  height: height * .25,
                  width: width * 1,
                  decoration: BoxDecoration(
                      color: ColorConstant.primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(width * .15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * .05),
                        child: Container(
                          width: width * .48,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.all(
                          //         Radius.circular(width * .02)),
                          //     border: Border.all(
                          //         color: Colors.white.withOpacity(.5),
                          //         width: width * .005)),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.my_location_rounded,
                                    size: width * 0.06,
                                    color: Colors.white.withOpacity(.95)),
                                SizedBox(width: width * 0.02),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Current Location",
                                      style: GoogleFonts.montserrat(
                                          color:
                                              Colors.white.withOpacity(.95),
                                          fontWeight: FontWeight.w600,
                                          fontSize: width * 0.04),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Using Device",
                                          style: GoogleFonts.montserrat(
                                              color: ColorConstant
                                                  .secondaryColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: width * 0.03),
                                        ),
                                        SizedBox(
                                          width: width * .075,
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color:
                                              Colors.white.withOpacity(.95),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * .05,
                            right: width * .05,
                            bottom: height * .02,
                            top: height * .005),
                        child: SizedBox(
                          height: height * .055,
                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                // labelText: 'Enter your text',
                                hintText: 'Search here...',
                                hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.search),
                                // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * .03),
                                    borderSide: BorderSide.none
                                    // BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                                    ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * .03),
                                  borderSide: BorderSide.none,
                                  // BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: ColorConstant.primaryColor,
                child: Container(
                  height: height * 1,
                  width: width * 1,
                  decoration: BoxDecoration(
                      color: ColorConstant.backgroundColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(width * .15))),
                  child: Column(
                    children: [
                      // Text("data")
                      SizedBox(
                height: height * 0.0725,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: categories.length,
                  padding: EdgeInsets.all(width * 0.03),
                  scrollDirection: Axis.horizontal,
        
                  itemBuilder: (context, index) {
                    return Container(
                      // height: width * 0.3,
                      // width: width * 0.3,
                      margin: EdgeInsets.only(right: width * 0.03),
                      decoration: BoxDecoration(
                          color: ColorConstant.backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors
                                  .black26, // Black shadow with opacity
                              blurRadius:
                                  width * 0.02, // Softness of the shadow
                              spreadRadius: width *
                                  0.002, // How much the shadow expands
                              offset: Offset(
                                  1, 3), // Moves shadow to bottom-right
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                              Radius.circular(width * 0.05))),
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  categories[index]["title"],
                                  style: GoogleFonts.poppins(
                                      fontSize: height * .018,
                                      fontWeight: FontWeight.w500),
                                  // style: TextStyle(
                                  //   fontSize: height*.02,
                                  //     color: ColorConstant.thirdColor,
                                  //     fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 4,
                  //     crossAxisSpacing: width * 0.02,
                  //     childAspectRatio: ,
                  //     mainAxisSpacing: width * 0.02),
                ),
              )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
