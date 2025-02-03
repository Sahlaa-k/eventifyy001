
import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';

class onBoarding3 extends StatefulWidget {
  const onBoarding3({super.key});

  @override
  State<onBoarding3> createState() => _onBoarding3State();
}

class _onBoarding3State extends State<onBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.thirdColor,
      body: SizedBox(
        height: height * 1,
        width: width * 1,
        child: Padding(
          padding: EdgeInsets.all(width * 0.1),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width * 0.25)),
                    ),
                  ),
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(width * 0.2)),
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.cake2),
                              fit: BoxFit.cover),


                  ),),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
                            //bottomRight: Radius.circular(width*0.2)
                            ),
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.cakeAndGift),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(width * 0.2)),
                     ),

                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.BackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width * 0.2),
                          bottomLeft: Radius.circular(width * 0.2),
                        )),
                  ),
                  Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(width * 0.2),
                          bottomRight: Radius.circular(width * 0.2),
                          bottomLeft: Radius.circular(width * 0.2),
                        ),
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.gift),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(height: width*0.03,),
              Text(
                "Quality You Can Taste, Joy You Can Share!",
                style: TextStyle(
                    color: ColorConstant.BackgroundColor,
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: width*0.03,),
              Text(
                "Celebrate every occasion with top-quality cakes and thoughtfully chosen gifts. Experience the perfect blend of elegance and taste.",
                style: TextStyle(color: ColorConstant.BackgroundColor,fontSize: width*0.04),
              )
            ],
          ),
        ),
      ),
    );
  }
}
