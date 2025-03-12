import 'package:eventify001/constants/color_constant.dart';
import 'package:eventify001/constants/image_constant.dart';
import 'package:eventify001/features/bottom_navigation/ventors/vendorView_page.dart';
import 'package:eventify001/features/bottom_navigation/ventors/vendor_sample.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VendorsPage extends StatefulWidget {
  
  const VendorsPage({super.key});

  @override
  State<VendorsPage> createState() => _VendorsPageState();
}

class _VendorsPageState extends State<VendorsPage> {
  // List Category = [
  //   "Cake",
  //   "Photography",
  //   "Stage Decoration",
  //   "Cake",
  //   "Photography",
  //   "Stage Decoration "
  // ];
  List<Map<String, dynamic>> Categorys = [
    {
      "Category_name": "Cake",
      "Category_image":ImageConstant.cake2
      },
    {
      "Category_name": "Photography",
      "Category_image":ImageConstant.photoGrapher3
      },
    {
      "Category_name": "Stage ",
      "Category_image":ImageConstant.eventManagementStage
      },
    {
      "Category_name": "Car",
      "Category_image":ImageConstant.car
      },
    {
      "Category_name": "Gift",
      "Category_image":ImageConstant.gift
      },
    {
      "Category_name": "Dancers",
      "Category_image":ImageConstant.dance
      },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset(colorBlendMode: BlendMode.dstIn,"assets/image/cake2.webp",

          //   ),
          SizedBox(
            height: height * .04,
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .01),
            child: Text(
              "Vendors",
              style: TextStyle(
                  fontSize: height * .04, fontWeight: FontWeight.w500),
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
              itemCount: Categorys.length,
              padding: EdgeInsets.only(top: height * .01, bottom: height * .02),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return index % 2 == 0
                    ? Padding(
                        padding: EdgeInsets.only(
                            left: width * .05,
                            right: width * .05,
                            bottom: width * .01,
                            top: height * .01),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(context, CupertinoPageRoute(builder: (context) => VendorSample(vender: Categorys[index]),));
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => VendorviewPage(vender: Categorys[index]),));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: height * .12,
                                width: width * .4,
                          
                                decoration: BoxDecoration(
                                    // border: Border.all(),
                                    borderRadius:
                                        BorderRadius.circular(width * .05),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          Categorys[index]["Category_image"],
                                        ),
                                        fit: BoxFit.cover)),
                                //  child: Align(alignment: Alignment.centerLeft, child: Image.asset( height: 100,"assets/image/cake2.webp"))
                              ),
                              Container(
                                height: height * .12,
                                width: width * .9,
                          
                                // foregroundDecoration: BoxDecoration(),
                          
                                decoration: BoxDecoration(
                                    // image: DecorationImage( image: AssetImage("assets/image/cake2.webp",) ,alignment:Alignment.centerLeft, ),
                          
                                    // gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [ColorConstant.primaryColor,ColorConstant.primaryColor,ColorConstant.secondaryColor]),
                                    borderRadius:
                                        BorderRadius.circular(width * .05)),
                          
                                foregroundDecoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * .05),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                        ColorConstant.primaryColor,
                                        ColorConstant.primaryColor,
                                        ColorConstant.primaryColor,
                                        ColorConstant.primaryColor,
                                      ]),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: width * .03, top: height * .07),
                                    child: Text(
                                      Categorys[index]["Category_name"],
                                      style: TextStyle(
                                          fontSize: height * .035,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                              //   decoration: BoxDecoration(color: Colors.white,
                              //     borderRadius: BorderRadius.circular(20),
                              //   ),
                              //   child: ShaderMask(
                              //     shaderCallback: (Rect bounds) {
                              //       return RadialGradient(
                              //         center: Alignment.center,
                              //         radius: 0.8,
                              //         colors: [
                              //           Colors.transparent,
                              //           Colors.black,
                              //         ],
                              //         stops: [0.4, 1.0],
                              //       ).createShader(bounds);
                              //     },
                              //     blendMode: BlendMode.dstIn,
                              //     child: Image.asset("assets/image/cake2.webp",),
                              //     // child: Image.network(
                              //     //   'https://via.placeholder.com/300', // Replace with your image URL
                              //     //   fit: BoxFit.cover,
                              //     // ),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            left: width * .05,
                            right: width * .05,
                            bottom: width * .01,
                            top: height * .01),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(context, CupertinoPageRoute(builder: (context) => VendorSample(vender: Categorys[index]),));
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VendorviewPage(vender: Categorys[index],),));
                          },
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: height * .12,
                                  width: width * .4,
                          
                                  decoration: BoxDecoration(
                                      // border: Border.all(),
                                      borderRadius:
                                          BorderRadius.circular(width * .05),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            Categorys[index]["Category_image"],
                                          ),
                                          fit: BoxFit.cover)),
                                  //  child: Align(alignment: Alignment.centerLeft, child: Image.asset( height: 100,"assets/image/cake2.webp"))
                                ),
                              ),
                              Container(
                                height: height * .12,
                                width: width * .9,
                          
                                // foregroundDecoration: BoxDecoration(),
                          
                                decoration: BoxDecoration(
                                    // image: DecorationImage( image: AssetImage("assets/image/cake2.webp",) ,alignment:Alignment.centerLeft, ),
                          
                                    // gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [ColorConstant.primaryColor,ColorConstant.primaryColor,ColorConstant.secondaryColor]),
                                    borderRadius:
                                        BorderRadius.circular(width * .05)),
                          
                                foregroundDecoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * .05),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        ColorConstant.secondaryColor,
                                        ColorConstant.secondaryColor,
                                        ColorConstant.secondaryColor,
                                        ColorConstant.secondaryColor,
                                        Colors.transparent,
                                        Colors.transparent,
                                      ]),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: width * .03, top: height * .07),
                                    child: Text(
                                      Categorys[index]["Category_name"],
                                      style: TextStyle(
                                          fontSize: height * .035,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                              //   decoration: BoxDecoration(color: Colors.white,
                              //     borderRadius: BorderRadius.circular(20),
                              //   ),
                              //   child: ShaderMask(
                              //     shaderCallback: (Rect bounds) {
                              //       return RadialGradient(
                              //         center: Alignment.center,
                              //         radius: 0.8,
                              //         colors: [
                              //           Colors.transparent,
                              //           Colors.black,
                              //         ],
                              //         stops: [0.4, 1.0],
                              //       ).createShader(bounds);
                              //     },
                              //     blendMode: BlendMode.dstIn,
                              //     child: Image.asset("assets/image/cake2.webp",),
                              //     // child: Image.network(
                              //     //   'https://via.placeholder.com/300', // Replace with your image URL
                              //     //   fit: BoxFit.cover,
                              //     // ),
                              //   ),
                              // )
                            ],
                          ),
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
