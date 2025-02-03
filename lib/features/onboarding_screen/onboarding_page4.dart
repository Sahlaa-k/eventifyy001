import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';

class onBoarding4 extends StatefulWidget {
  const onBoarding4({super.key});

  @override
  State<onBoarding4> createState() => _onBoarding4State();
}

class _onBoarding4State extends State<onBoarding4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SizedBox(
        height: height*1,
        width: width*1,
        child: Padding(
          padding:  EdgeInsets.all(width*0.1),
          child: Column(

            children: [
              Row  (
                children: [
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width*0.2),
                        topRight: Radius.circular(width*0.2),
                        bottomLeft: Radius.circular(width*0.2),
                      ),

                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.BackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(width*0.2),
                          topRight:  Radius.circular(width*0.2),

                        ),
                      image: DecorationImage(image: AssetImage(ImageConstant.photoGrapher1,),fit: BoxFit.cover)

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: width*0.4,
                    width: width*0.8,
                    decoration: BoxDecoration(
                        color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width*0.2),
                          topRight:  Radius.circular(width*0.2),
                        ),
                        image: DecorationImage(image: AssetImage(ImageConstant.photoGrapher2,),fit: BoxFit.cover)

                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width*0.2)
                          ,bottomLeft:Radius.circular(width*0.2),
                        ),
                        image: DecorationImage(image: AssetImage(ImageConstant.photoGrapher3,),fit: BoxFit.cover)

                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.thirdColor     ,
                        borderRadius: BorderRadius.all(
                          Radius.circular(width*0.3)
                          // topRight: Radius.circular(width*0.2),
                          // bottomRight: Radius.circular(width*0.2),
                          // bottomLeft:  Radius.circular(width*0.2),

                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: width*0.05,),
              Text(
                "Every Click ,\nA Timeless Memory",
                style: TextStyle(
                    color: ColorConstant.BackgroundColor,
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: width*0.03,),
              Text(
                "We believe in capturing emotions, not just images. Experience photography that reflects the highest standards of quality and care.",
                style: TextStyle(color: ColorConstant.BackgroundColor,fontSize: width*0.04),
              )
            ],
          ),
        ),

      ),
    );
  }
}
