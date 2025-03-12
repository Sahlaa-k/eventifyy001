import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eventify001/constants/color_constant.dart';
import 'package:eventify001/constants/image_constant.dart';
import 'package:eventify001/features/bottom_navigation/ventors/view_product.dart';
// import 'package:flutter/painting.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

class VendorviewPage extends StatefulWidget {
  final Map<String, dynamic> vender;
  const VendorviewPage({super.key, required this.vender});

  @override
  State<VendorviewPage> createState() => _VendorviewPageState();
}

class _VendorviewPageState extends State<VendorviewPage> {
  int selectindex = 0;
  List images = [
    ImageConstant.singer,
    ImageConstant.car,
    ImageConstant.jewellery2
  ];

  List<Map<String, dynamic>> products_list = [
    {
      "product_Id": "1000",
      "product_image":
          "https://i.pinimg.com/564x/7a/21/33/7a2133d0dd9d8cfc8ddba57709e99024.jpg",
      "product_category": "T-shirt",
      "product_name": "Essential Tee",
      "product_color": "Blue",
      "product_material": "cotton",
      "product_size": "MEDIUM",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1001",
      "product_image":
          "https://i.pinimg.com/736x/67/98/b9/6798b924f036fdf5eb69c7ca30bb59b6.jpg",
      "product_category": "T-shirt",
      "product_name": "Ribbed Tank",
      "product_color": "Blue",
      "product_material": "polister",
      "product_size": "2XL",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1002",
      "product_image":
          "https://i.pinimg.com/564x/0f/58/34/0f58346f60b8197cfdba8dd4fde133a5.jpg",
      "product_category": "T-shirt",
      "product_name": "Essential Das",
      "product_color": "Red",
      "product_material": "mix",
      "product_size": "MEDIUM",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1003",
      "product_image":
          "https://i.pinimg.com/564x/7a/21/33/7a2133d0dd9d8cfc8ddba57709e99024.jpg",
      "product_category": "T-shirt",
      "product_name": "Over-Sized",
      "product_color": "Green",
      "product_material": "cotton",
      "product_size": "MEDIUM",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1004",
      "product_image":
          "https://i.pinimg.com/564x/1f/25/1a/1f251a47c420afe44cbb0c1a251194f7.jpg",
      "product_category": "T-shirt",
      "product_name": "Hoodies",
      "product_color": "black",
      "product_material": "cotton",
      "product_size": "XL",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1005",
      "product_image":
          "https://i.pinimg.com/736x/80/94/60/80946097972a22270e88c60ba43d4106.jpg",
      "product_category": "Pant",
      "product_name": "Bagi",
      "product_color": "brown",
      "product_material": "jean",
      "product_size": "SMALL",
      "product_price": 100,
      "product_quantity": 1,
    },
    {
      "product_Id": "1006",
      "product_image":
          "https://i.pinimg.com/564x/19/fe/6c/19fe6c8be0dd600f560371c5d3fe73e5.jpg",
      "product_category": "Pant",
      "product_name": "korean",
      "product_color": "black",
      "product_material": "cotton",
      "product_size": "LARGE",
      "product_price": 100,
      "product_quantity": 1,
    },
  ];

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

  bool viewAll = false;
  bool favorite01 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: width * 1,
                  height: height * .28,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.vender['Category_image']),
                        fit: BoxFit.fitWidth),
                  ),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(width * .05),
                        topRight: Radius.circular(width * .05)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          ColorConstant.backgroundColor,
                        ]),
                  ),
                  // child: Image(
                  //   image: AssetImage(
                  //     widget.vender['Category_image'],
                  //   ),
                  //   fit: BoxFit.fitWidth,
                  // )
                )),
            SafeArea(
              child: Column(
                children: [
                  Text(widget.vender['Category_name'],
                      style: TextStyle(
                        fontSize: height * .07,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = .1
                          ..color = Colors.white, // Border color
                      )),

                  // SizedBox(height: 100,),
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
                                borderSide: BorderSide.none
                                // BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .015,
                  ),

                  // SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),
                  //   child: Container(
                  //     height: height*.75,
                  //     width: width*1,
                  //     decoration: BoxDecoration(border: Border.all()),
                  //     child: Column(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Container(
                  //             height: 150,
                  //             width: 100,
                  //             color: Colors.black12,
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Container(
                  //             height: 150,
                  //             width: 100,
                  //             color: Colors.black12,
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Container(
                  //             height: 150,
                  //             width: 100,
                  //             color: Colors.black12,
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Container(
                  //             height: 150,
                  //             width: 100,
                  //             color: Colors.black12,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // )

                  Container(
                    height: height * .75,
                    width: width * 1,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * .015,
                            ),
                            CarouselSlider.builder(
                              itemCount: images.length,
                              options: CarouselOptions(
                                  // scrollPhysics: NeverScrollableScrollPhysics(),
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      Duration(seconds: 1),
                                  viewportFraction: 0.85,
                                  aspectRatio: height * 0.002,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      selectindex = index;
                                    });
                                  }),
                              itemBuilder: (BuildContext context, int index,
                                  int realIndex) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: width * .025, left: width * .025),
                                  child: GestureDetector(
                                    onTap: () {
                                      
                                    },
                                    child: Stack(children: [
                                      Container(
                                          height: height * 0.4,
                                          width: width * 0.9,
                                          margin: EdgeInsets.only(
                                              right: width * 0.02),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.primaryColor,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    images[index],
                                                  ),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.circular(
                                                  width * 0.04)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.all(width * 0.03),
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: width * 0.045,
                                                      backgroundImage: AssetImage(
                                                          ImageConstant.singer),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Ibrahim Sha",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .backgroundColor),
                                                        ),
                                                        Text(
                                                          "August,08,2020,",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .backgroundColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: width * 0.4,
                                              ),
                                              // Container(
                                              //   height: height * 0.04,
                                              //   width: width * 0.29,
                                              //   margin: EdgeInsets.only(left: width * 0.02),
                                              //   decoration: BoxDecoration(
                                              //     color: Colors.black54,
                                              //     border: Border.all(color: Colors.white60),
                                              //     borderRadius: BorderRadius.all(
                                              //         Radius.circular(width * 0.08)),
                                              //   ),
                                              //   child: Center(
                                              //       child: Text(
                                              //     "Wedding",
                                              //     style: TextStyle(
                                              //         color: ColorConstant.backgroundColor),
                                              //   )),
                                              // ),
                                              // SizedBox(
                                              //   height: height * 0.006,
                                              // ),
                                              // Container(
                                              //   height: height * 0.07,
                                              //   color: Colors.black45,
                                              //   child: Padding(
                                              //     padding: EdgeInsets.only(left: width * 0.02),
                                              //     child: Column(
                                              //       crossAxisAlignment: CrossAxisAlignment.start,
                                              //       children: [
                                              //         Text(
                                              //           "A Love Story Begins",
                                              //           style: TextStyle(
                                              //               color: ColorConstant.backgroundColor),
                                              //         ),
                                              //         Text(
                                              //           " Inspiration, Planning Tips, and Heartfelt Moments for Your Dream Day",
                                              //           style: TextStyle(
                                              //               color: ColorConstant.backgroundColor),
                                              //         ),
                                              //       ],
                                              //     ),
                                              //   ),
                                              // )
                                            ],
                                          )),
                                    ]),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: height * 0.17,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: AlwaysScrollableScrollPhysics(),
                                itemCount: categories.length,
                                padding: EdgeInsets.all(width * 0.03),
                                scrollDirection: Axis.horizontal,

                                itemBuilder: (context, index) {
                                  return Container(
                                    height: width * 0.3,
                                    width: width * 0.3,
                                    margin:
                                        EdgeInsets.only(right: width * 0.03),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.backgroundColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors
                                                .black26, // Black shadow with opacity
                                            blurRadius: width *
                                                0.02, // Softness of the shadow
                                            spreadRadius: width *
                                                0.002, // How much the shadow expands
                                            offset: Offset(1,
                                                3), // Moves shadow to bottom-right
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(width * 0.05))),
                                    child: Padding(
                                      padding: EdgeInsets.all(width * 0.02),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                ColorConstant.primaryColor,
                                            radius: width * 0.065,
                                            child: categories[index]["icon"],
                                          ),
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
                                          )),
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
                            ),
                            Text(
                              widget.vender['Category_name'],
                              style: TextStyle(fontSize: height * .04),
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      // childAspectRatio: 0.6,
                                      childAspectRatio: height * .00095,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: width * .025,
                                      crossAxisSpacing: width * .025),
                              padding: EdgeInsets.all(width * .025),
                              physics: NeverScrollableScrollPhysics(),
                              // itemCount: 4,
                              itemCount: viewAll == false
                                  ? products_list.sublist(0, 2).length
                                  : products_list.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProduct(product: products_list[index],),));
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        // height: height*0.5,
                                        // width: width*0.3,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(18, 0, 0, 0),
                                            // border: Border.all(color: ColorConstant.primaryColor,width: width*.005),
                                            borderRadius: BorderRadius.circular(
                                                width * .02)),
                                        child: Container(
                                          child: Column(children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * .01,
                                                  right: width * .015,
                                                  left: width * .015),
                                              child: Container(
                                                height: height * 0.25,
                                                width: width * 0.4,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          width * .02),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        products_list[index]
                                                            ["product_image"],
                                                      ),
                                                      fit: BoxFit.cover),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            favorite01 =
                                                                !favorite01;
                                                          });
                                                        },
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(93,
                                                                      0, 0, 0),
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    width *
                                                                        .02),
                                                            child: favorite01 ==
                                                                    false
                                                                ? Icon(
                                                                    Icons
                                                                        .favorite_outline_rounded,
                                                                    size:
                                                                        height *
                                                                            .03,
                                                                    color: Colors
                                                                        .white)
                                                                : Icon(
                                                                    Icons
                                                                        .favorite_rounded,
                                                                    size:
                                                                        height *
                                                                            .03,
                                                                    color: Colors
                                                                        .redAccent,
                                                                  ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: width * .43,
                                          height: height * .055,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.primaryColor,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                      width * .02),
                                                  bottomRight: Radius.circular(
                                                      width * .02))),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: height * 0.050,
                            ),
                            GestureDetector(
                              onTap: () {
                                viewAll = !viewAll;
                                setState(() {});
                              },
                              child: Container(
                                width: width * 0.3,
                                height: height * 0.055,
                                decoration: BoxDecoration(
                                    border: Border.all(width: width * .005),
                                    borderRadius:
                                        BorderRadius.circular(width * .025)),
                                child: Center(
                                    child: Text(
                                        viewAll == false
                                            ? "view all"
                                            : "view less",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}