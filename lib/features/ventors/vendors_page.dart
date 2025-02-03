import 'package:eventify001/constants/color_constant.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';

class VendorsPage extends StatefulWidget {
  const VendorsPage({super.key});

  @override
  State<VendorsPage> createState() => _VendorsPageState();
}

class _VendorsPageState extends State<VendorsPage> {
  List Category = [
    "Cake",
    "Photography",
    "Stage Decoration",
    "Cake",
    "Photography",
    "Stage Decoration "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.BackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * .04,
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .01),
            child: Text(
              "Vendors",
              style: TextStyle(fontSize: height * .04),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * .05,
                right: width * .05,
                bottom: width * .02,
                top: height * .02),
            child: SizedBox(
              height: height * .05,
              child: TextFormField(
                decoration: InputDecoration(
                  // labelText: 'Enter your text',
                  hintText: 'Search Here...',

                  hintStyle: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w600),
                  // prefixIcon: Icon(Icons.lock),

                  // suffix: Container(
                  //   height: height*.045,width: width*.1,
                  // decoration: BoxDecoration(color: ColorConstant.primaryColor ,borderRadius: BorderRadius.circular(width*.015)),
                  // child:Icon(Icons.search_rounded,color: Colors.white,),),

                  // suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * .02),
                    borderSide: BorderSide(
                        color: ColorConstant.primaryColor, width: width * .006),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * .02),
                    borderSide: BorderSide(
                        color: ColorConstant.primaryColor, width: width * .006),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Category.length,
              padding: EdgeInsets.only(top: height * .01, bottom: height * .02),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Category.length.isEven
                    ? Padding(
                        padding: EdgeInsets.only(
                            left: width * .05,
                            right: width * .05,
                            bottom: width * .01,
                            top: height * .01),
                        child: Stack(
                          children: [
                            Container(
                              height: height * .12,
                              width: width * .9,
                              decoration: BoxDecoration(
                                  color: ColorConstant.primaryColor,
                                  borderRadius:
                                      BorderRadius.circular(width * .05)),
                              child: Positioned(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                  top: height * .001,
                                  left: width * .02,
                                ),
                                child: Text(
                                  Category[index],
                                  style: TextStyle(
                                      fontSize: height * .035,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            left: width * .05,
                            right: width * .05,
                            bottom: width * .01,
                            top: height * .01),
                        child: Stack(
                          children: [
                            Container(
                              height: height * .12,
                              width: width * .9,
                              decoration: BoxDecoration(
                                  color: ColorConstant.secondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(width * .05)),
                              child: Positioned(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                  top: height * .001,
                                  left: width * .02,
                                ),
                                child: Text(
                                  Category[index],
                                  style: TextStyle(
                                      fontSize: height * .035,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                            ),
                          ],
                        ),
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}
