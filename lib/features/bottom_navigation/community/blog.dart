import 'package:carousel_slider/carousel_slider.dart';

import 'package:eventify001/features/bottom_navigation/community/view_blog_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/color_constant.dart';
import '../../../core/constants/image_constant.dart';
import '../../../main.dart';
import 'clip_rect.dart';

class BlogTab extends StatefulWidget {
  const BlogTab({super.key});

  @override
  State<BlogTab> createState() => _BlogTabState();
}

class _BlogTabState extends State<BlogTab> {
  List<Map<String, dynamic>> categories = [
    {
      "icon": LineIcon.ring(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Wedding",
    },
    {
      "icon": LineIcon.yelp(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Haldi",
    },
    {
      "icon": LineIcon.cashRegister(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Budget Event ",
    },
    {
      "icon": LineIcon.kissingFace(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Honey Moon",
    },
    {
      "icon": LineIcon.prescription(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Pre-Wedding ",
    },
    {
      "icon": LineIcon.materialDesignForBootstrap(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Mehndi & Sangeet ",
    },
    {
      "icon": LineIcon.caretSquareRightAlt(
        color: ColorConstant.backgroundColor,
      ),
      "title": "photoGraphy",
    },
    {
      "icon": LineIcon.birthdayCake(
        color: ColorConstant.backgroundColor,
      ),
      "title": "BirthDay",
    },
    {
      "icon": LineIcon.kickstarter(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Event-Management",
    },
    {
      "icon": LineIcon.planeDeparture(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Reception Party",
    },
    {
      "icon": LineIcon.alternateFirstOrder(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Anniversary",
    },
    {
      "icon": LineIcon.lifeRingAlt(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Engagement",
    },
    {
      "icon": LineIcon.child(
        color: ColorConstant.backgroundColor,
      ),
      "title": "Baby shower",
    },
    {
      "icon": LineIcon.home(
        color: ColorConstant.backgroundColor,
      ),
      "title": "House Warming ",
    },
    {
      "icon": LineIcon.userFriends(
        color: ColorConstant.backgroundColor,
      ),
      "title": " Farewell Party",
    },
    {
      "icon": LineIcon.gifts(
        color: ColorConstant.backgroundColor,
      ),
      "title": " Gifts & Cake ",
    },
  ];
  int selectindex = 0;
  List images = [
    ImageConstant.singer,
    ImageConstant.car,
    ImageConstant.jewellery2
  ];
  bool isSaved = false;
  List<Map> bottom = [
    {
      "icon": Icons.share,
      "title": "Share",
      // "navigation":
    },
    {
      "icon": Icons.queue_play_next_outlined,
      "title": "Browse Kamal Sha",
    },
    {
      "icon": Icons.visibility_off,
      "title": "Show less of such content",
    },
    {
      "icon": Icons.flag_outlined,
      "title": "Report",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.04,
              width: width * 1,
              //color: ColorConstant.primaryColor,
              child: Text(
                "Blog Of Ideas",
                style: GoogleFonts.lemon(
                    color: ColorConstant.primaryColor, fontSize: width * 0.05),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trending",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.06),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 0.9,
                  aspectRatio: height * 0.00135,
                  onPageChanged: (index, reason) {
                    setState(() {
                      selectindex = index;
                    });
                  }),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(children: [
                  Container(
                      height: height * 0.4,
                      width: width * 0.9,
                      margin: EdgeInsets.only(right: width * 0.02),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(width * 0.04)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: width * 0.045,
                                  backgroundImage:
                                      AssetImage(ImageConstant.singer),
                                ),
                                SizedBox(width: width*0.02,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ibrahim Sha",
                                      style: TextStyle(
                                          color: ColorConstant.backgroundColor),
                                    ),
                                    Text(
                                      "August,08,2020,",
                                      style: TextStyle(
                                          color: ColorConstant.backgroundColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: width * 0.4,
                          ),
                          Container(
                            height: height * 0.04,
                            width: width * 0.29,
                            margin: EdgeInsets.only(left: width * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              border: Border.all(color: Colors.white60),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(width * 0.08)),
                            ),
                            child: Center(
                                child: Text(
                              "Wedding",
                              style: TextStyle(
                                  color: ColorConstant.backgroundColor),
                            )),
                          ),
                          SizedBox(
                            height: height * 0.006,
                          ),
                          Container(
                            height: height * 0.07,
                            color: Colors.black45,
                            child: Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "A Love Story Begins",
                                    style: TextStyle(
                                        color: ColorConstant.backgroundColor),
                                  ),
                                  Text(
                                    " Inspiration, Planning Tips, and Heartfelt Moments for Your Dream Day",
                                    style: TextStyle(
                                        color: ColorConstant.backgroundColor),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ]);
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            AnimatedSmoothIndicator(
              activeIndex: selectindex,
              count: images.length,
              effect: WormEffect(
                activeDotColor: ColorConstant.thirdColor,
                dotColor: ColorConstant.grey,
                dotHeight: height * 0.01,
                dotWidth: width * 0.02,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.06),
                ),
              ),
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
                    height: height * 0.1,
                    width: width * 0.2,
                    margin: EdgeInsets.only(right: width * 0.03),
                    decoration: BoxDecoration(
                        color: ColorConstant.backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Black shadow with opacity
                            blurRadius: width * 0.02, // Softness of the shadow
                            spreadRadius:
                                width * 0.002, // How much the shadow expands
                            offset:
                                Offset(1, 3), // Moves shadow to bottom-right
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.circular(width * 0.1))),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorConstant.primaryColor,
                            radius: width * 0.08,
                            child: categories[index]["icon"],
                          ),
                          Expanded(
                              child: Text(
                            categories[index]["title"],
                            style: TextStyle(color: ColorConstant.thirdColor),
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
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Just For You",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.06),
                ),
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
            ListView.separated(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewBlogPage(),
                        ));
                  },
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.22,
                    // margin: EdgeInsets.all(width * 0.03),
                    decoration: BoxDecoration(
                      color: ColorConstant.backgroundColor,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.black
                        //       .withOpacity(0.3), // Black shadow with opacity
                        //   blurRadius: width * 0.02, // Softness of the shadow
                        //   spreadRadius:
                        //       width * 0.002, // How much the shadow expands
                        //   offset: Offset(1, 3), // Moves shadow to bottom-right
                        // ),
                      ],
                      //borderRadius: BorderRadius.circular(width * .02),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: width * 0.35,
                                width: width * 0.5,
                                child: Expanded(
                                  child: Text(
                                    " Inspiration, Planning Tips, and Heartfelt Moments for Your Dream Day",
                                    style: TextStyle(
                                        color: ColorConstant.thirdColor,
                                        fontSize: width * 0.05,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.01),
                                    child: CircleAvatar(
                                      radius: width * 0.03,
                                      backgroundImage:
                                          AssetImage(ImageConstant.singer),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,),
                                  Row(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ibrahim Sha ",
                                        style:
                                            TextStyle(color: ColorConstant.grey),
                                      ),
                                      Text(
                                        "Aug,08,2020,",
                                        style:
                                        TextStyle(color: Colors.grey[400],fontSize: width*0.025),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: width * 0.4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSaved = !isSaved;
                                        });
                                      },
                                      child: Icon(
                                        isSaved
                                            ? Icons.bookmark
                                            : Icons.bookmark_border_rounded,
                                        color: isSaved
                                            ? ColorConstant.grey
                                            : ColorConstant.grey,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft:
                                              Radius.circular(width * 0.03),
                                              topRight:
                                              Radius.circular(width * 0.03),
                                            ),
                                          ),
                                          builder: (context) {
                                            return Container(
                                              margin: EdgeInsets.only(
                                                left: width * 0.02,
                                                right: width * 0.02,
                                                //bottom: width * 0.02,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      width * 0.03),
                                                  topRight: Radius.circular(
                                                      width * 0.03),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: width * 0.03,
                                                  vertical: width * 0.03,
                                                ),
                                                child: ListView.builder(
                                                  itemCount: bottom.length,
                                                  shrinkWrap: true,
                                                  physics:
                                                  BouncingScrollPhysics(),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: EdgeInsets.all(
                                                          width * 0.02),
                                                      child: Container(
                                                        height: height * 0.05,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              bottom[index]
                                                              ["icon"],
                                                              color:
                                                              Colors.black,
                                                              size:
                                                              width * 0.06,
                                                            ),
                                                            SizedBox(
                                                              width:
                                                              width * 0.04,
                                                            ),
                                                            Text(
                                                              bottom[index]
                                                              ["title"],
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize:
                                                                width *
                                                                    0.04,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.more_vert,
                                        color: ColorConstant.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: width*0.02,),
                              Container(
                                height: width * 0.3,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(width * 0.03),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover)),
                              ),

                                                         ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) { return   Divider(
              color: Colors.black54,
            ); },
            )
          ],
        ),
      ),
    );
  }
}
