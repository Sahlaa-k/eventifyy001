import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';

class onBoarding5 extends StatefulWidget {
  const onBoarding5({super.key});

  @override
  State<onBoarding5> createState() => _onBoarding5State();
}

class _onBoarding5State extends State<onBoarding5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.BackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width*0.25)
                      ),
                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.thirdColor,
                        borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(width*0.2)

                        ),
                        image: DecorationImage(image: AssetImage(ImageConstant.singer),fit: BoxFit.cover)


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
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(width*0.2)

                        ),
                        image: DecorationImage(image: AssetImage(ImageConstant.dance_singer),fit: BoxFit.cover)

                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(width*0.2)
                        )
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
                        color: ColorConstant.thirdColor,
                        borderRadius: BorderRadius.only(
                          bottomRight:Radius.circular(width*0.2),
                          topLeft: Radius.circular(width*0.2)

                        )
                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor     ,
                        borderRadius: BorderRadius.only(

                          bottomRight: Radius.circular(width*0.2),
                          bottomLeft:  Radius.circular(width*0.2),

                        ),
                        image: DecorationImage(image: AssetImage(ImageConstant.dance),fit: BoxFit.cover)

                    ),
                  ),
                ],
              ),
        SizedBox(height: width*0.05,),
        Text(
          "Your Celebration,\n Our Stage!!",
          style: TextStyle(
              color: ColorConstant.primaryColor,
              fontSize: width * 0.09,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(height: width*0.03,),
        Text(
          "Elevate your events with the best singers and dancers. From soulful melodies to vibrant performances, we help you create magical moments.",
          style: TextStyle(color: ColorConstant.primaryColor,fontSize: width*0.04),),
            ],
          ),
        ),

      ),
    );
  }
}
