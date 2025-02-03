import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/image_constant.dart';
import '../../main.dart';

class onBoarding2 extends StatefulWidget {
  const onBoarding2({super.key});

  @override
  State<onBoarding2> createState() => _onBoarding2State();
}

class _onBoarding2State extends State<onBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.BackgroundColor,
      body: SizedBox(
        height: height* 1,
        width: width* 1,
        child: Padding(
          padding:  EdgeInsets.all(width*0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondaryColor,
                      borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width*0.2)
                      ),
                      image: DecorationImage(image: AssetImage(ImageConstant.car),fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
topLeft: Radius.circular(width*0.2),
                            bottomRight: Radius.circular(width*0.2)
                        )

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
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(width*0.25),
                            bottomRight: Radius.circular(width*0.25)
                        ),
                      image: DecorationImage(image: AssetImage(ImageConstant.marriage),fit: BoxFit.cover)

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
                            topLeft: Radius.circular(width*0.2),
                          bottomRight: Radius.circular(width*0.2)
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


                        ),
                      image: DecorationImage(image: AssetImage(ImageConstant.jewellery2),fit: BoxFit.cover
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: width*0.03,),
              Text(
                "Your Style, \nYour Choice!",
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontSize: width * 0.09,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: width*0.03,),
              Text(
"Explore a curated collection of dresses, accessories, and flowers—available for rent or purchase. Enjoy premium quality and reliable delivery tailored to your needs.",                style: TextStyle(color: ColorConstant.primaryColor,fontSize: width*0.04),
              )
            ],
          ),
        ),
      ),
    );
  }
}
