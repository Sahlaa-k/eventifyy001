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
    return Scaffold(
      backgroundColor: ColorConstant.secondaryColor,
      body: Padding(
        padding:  EdgeInsets.all(width*0.1),
        child: Column(
          children: [
            Container( height: width*1.2,width: width*.8,color: ColorConstant.BackgroundColor,
              child: Row(children: [
                Column(
                  children: [
                    Container(height: width*0.4,
                      width: width*0.4,
                      color: ColorConstant.secondaryColor,
                      child: Container(
                        height: width*0.4,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(width*0.2)
                          ),
                        ),
                      ),
                    ),
                    Container(height: width*0.4,
                      width: width*0.4,
                      decoration: BoxDecoration(color: ColorConstant.secondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomRight:Radius.circular(width*0.10),
                          )
                      ),
                      child: Container(
                        height: width*0.4,
                        width: width*0.4,
                        decoration: BoxDecoration(
                            color: ColorConstant.thirdColor,
                            // border: Border.all(),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(width*0.2),
                              bottomRight:Radius.circular(width*0.2),
                            ),


                        ),
                      ),
                    ),
                    Container(
                      height: width*0.4,
                      width: width*0.4,
                      decoration: BoxDecoration(color: ColorConstant.secondaryColor,
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(width*0.10),
                          )
                      ),
                      child: Container(
                        height: width*0.4,
                        width: width*0.4,
                        decoration: BoxDecoration(
                            color: ColorConstant.thirdColor,
                            // border: Border.all(),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(width*0.2),
                              bottomLeft:Radius.circular(width*0.2),
                            ),
                            image: DecorationImage(image: AssetImage(ImageConstant.catering),fit: BoxFit.cover)

                        ),
                      ),
                    ),

                  ],
                ),
                Column(children: [
                  Container(
                    height: width*0.8,
                    width: width*0.4,
                    decoration: BoxDecoration(color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(width*0.10),
                        )
                    ),
                    child: Container(
                      height: width*0.8,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color: ColorConstant.thirdColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(width*0.2),
                            topLeft:Radius.circular(width*0.2),
                          ),
                          image: DecorationImage(image: AssetImage(ImageConstant.table),fit: BoxFit.cover)

                      ),
                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondaryColor,
                      borderRadius: BorderRadius.only(

                        topLeft:Radius.circular(width*0.10),
                      ),


                    ),
                    child: Container(
                      height: width*0.4,
                      width: width*0.4,
                      decoration: BoxDecoration(
                        // border: Border.all(),
                          color: ColorConstant.thirdColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(width*0.2),
                              topRight: Radius.circular(width*0.2)
                          ),

                      ),
                    ),
                  ),
                ],)
              ],),),
            Text(
              "Making Your Celebrations Stand Out !",
              style:   TextStyle(
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
      ),
    );
  }
}
