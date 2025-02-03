import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';

class onBoarding1 extends StatefulWidget {
  const onBoarding1({super.key});

  @override
  State<onBoarding1> createState() => _onBoarding1State();
}

class _onBoarding1State extends State<onBoarding1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConstant.secondaryColor,
      body: SizedBox(
          height: height*1,
          width: width*1,
          child: Padding(
            padding:  EdgeInsets.all(width*0.1),
            child: Column(

              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: width*0.4,
                          width: width*0.4,
                          decoration: BoxDecoration(
                            color: ColorConstant.primaryColor,
                            borderRadius: BorderRadius.all(
                                          Radius.circular(width*0.2)
                            ),
                          ),
                        ),
                        Container(
                          height: width*0.4,
                          width: width*0.4,
                          decoration: BoxDecoration(
                              color: ColorConstant.BackgroundColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(width*0.25),
                                bottomRight:Radius.circular(width*0.25),
                              )

                          ),
                        ),
                      ],
                    ),


                Column(
                  children: [

                    Container(
                      height: width*0.8,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color: ColorConstant.thirdColor,
                          borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(width*0.2),
                            topLeft:Radius.circular(width*0.2),
                          ),
                          image: DecorationImage(image: AssetImage(ImageConstant.eventManagementStage),fit: BoxFit.cover)

                      ),
                    ),
                  ],
                ),]),
                Row(
                  children: [
                    Container(
                      height: width*0.4,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color: ColorConstant.thirdColor,
                          borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width*0.2)
                      ,bottomLeft:Radius.circular(width*0.2),
                          )
                      ),
                    ),
                    Container(
                      height: width*0.4,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor     ,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(width*0.2),
                              topLeft: Radius.circular(width*0.2)

                          )
                      ),
                    ),
                  ],
                ),





              Text(
                "Making Your Celebrations Stand Out !",
                style: TextStyle(
                    color: ColorConstant.thirdColor,
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Text(
                "We turn your ideas into reality with exceptional quality and meticulous attention to detail. Celebrate with confidence.",
                style: TextStyle(
                    color: ColorConstant.thirdColor, fontSize: width * 0.04),
              ),
    ],
    ),
    )),
    );
  }
}
