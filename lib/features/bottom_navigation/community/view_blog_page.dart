import 'package:eventify001/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../../../constants/image_constant.dart';
import '../../../main.dart';

class ViewBlogPage extends StatefulWidget {
  const ViewBlogPage({super.key});

  @override
  State<ViewBlogPage> createState() => _ViewBlogPageState();
}

class _ViewBlogPageState extends State<ViewBlogPage> {
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
  int selectindex = 0;
  List images = [
    ImageConstant.singer,
    ImageConstant.car,
    ImageConstant.jewellery2
  ];
  final List<String> reactions = ["Good", "Average", "Not Good"];
  Map<String, int> votes = {"Good": 0, "Average": 0, "Not Good": 0};
  int totalVotes = 0;
  void vote(String reaction) {
    setState(() {
      votes[reaction] = (votes[reaction] ?? 0) + 1;
      totalVotes++;
    });
  }

  double getPercentage(String reaction) {
    if (totalVotes == 0) return 0;
    return (votes[reaction]! / totalVotes) * 100;
  }

  bool showDisclaimer = false;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: height * 0.1,
          width: width * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstant.secondaryColor,
                ColorConstant.backgroundColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [
                0.5,
                0.5,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(width * 0.02),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: ColorConstant.thirdColor,
                          )),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        "Wedding",
                        style: TextStyle(
                            color: ColorConstant.thirdColor,
                            fontSize: width * 0.07),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Row(
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
                              ? ColorConstant.thirdColor
                              : ColorConstant.thirdColor,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(width * 0.03),
                                topRight: Radius.circular(width * 0.03),
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
                                    topLeft: Radius.circular(width * 0.03),
                                    topRight: Radius.circular(width * 0.03),
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
                                    physics: BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(width * 0.02),
                                        child: Container(
                                          height: height * 0.05,
                                          child: Row(
                                            children: [
                                              Icon(
                                                bottom[index]["icon"],
                                                color: Colors.black,
                                                size: width * 0.06,
                                              ),
                                              SizedBox(
                                                width: width * 0.04,
                                              ),
                                              Text(
                                                bottom[index]["title"],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: width * 0.04,
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
                          color: ColorConstant.thirdColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.57,
                  width: width * 1,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: height * 0.2,
                              width: width * 0.04,
                              color: ColorConstant.secondaryColor,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(width * 0.04),
                              child: Container(
                                height: height * 0.35,
                                width: width * 0.84,
                                decoration: BoxDecoration(
                                    color: ColorConstant.secondaryColor,
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.marriage),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: height * 0.35,
                        left: width * 0.12,
                        child: Container(
                          height: height * 0.2,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                            color: ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(width * 0.015),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Text(
                                    " Inspiration, Planning Tips, and Heartfelt Moments for Your Dream Day,",
                                    style: TextStyle(
                                        color: ColorConstant.thirdColor,
                                        fontSize: width * 0.06),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: width * 0.08,
                                      width: width * 0.08,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.secondaryColor,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.photoGrapher2),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: height * 0.01,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Kamal Sha",
                                            style: TextStyle(
                                                color: ColorConstant.thirdColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: width * 0.035),
                                          ),
                                          Text(
                                            ".12/Feb/2025",
                                            style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: width * 0.03),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.07, right: width * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A wedding is a beautiful celebration of love, commitment, and new beginnings, bringing two souls together in a lifelong journey. It is a day filled with emotions, traditions, and joy, where family and friends gather to witness and bless the union of the couple. From the heartfelt exchange of vows to the grand or intimate celebrations that follow, every wedding reflects the unique love story of the bride and groom. Cultural rituals, elegant attire, and exquisite decorations add charm to the occasion, making it a cherished memory for a lifetime. Beyond the ceremony, the wedding reception is a time of laughter, music, and festivities, symbolizing the happiness of starting a new chapter together. Regardless of its scale, what truly matters in a wedding is the love shared between two individuals, the support of loved ones, and the promise of a future filled with companionship, understanding, and endless possibilities.",
                        style: TextStyle(fontSize: 16.0),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Read more blog like on",
                        style: TextStyle(
                            color: ColorConstant.thirdColor,
                            fontSize: width * 0.06),
                      ),
                      SizedBox(
                        height: height * 0.008,
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 1,
                        decoration: BoxDecoration(
                            color: ColorConstant.secondaryColor,
                            borderRadius: BorderRadius.circular(width * 0.01)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Wedding",
                                  style: TextStyle(
                                      color: ColorConstant.thirdColor,
                                      fontSize: width * 0.055),
                                ),
                                LineIcon.arrowRight(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showDisclaimer = !showDisclaimer;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Disclaimer",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: width * 0.03),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: width * 0.03,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      if (showDisclaimer)
                        Text(
                          "This story is auto generated by a computer program and has not been created or edited by Eventify. Publisher: Kamal Sha",
                          style: TextStyle(
                            fontSize: width * 0.035,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      ListTile(
                        leading: Container(
                          height: width * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              color: ColorConstant.secondaryColor,
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.photoGrapher2),
                                  fit: BoxFit.cover)),
                        ),
                        title: Text(
                          "Kamal Sha",
                          style: TextStyle(
                              color: ColorConstant.thirdColor,
                              fontSize: width * 0.045),
                        ),
                        subtitle: Text(
                          "120k Followers",
                          style: TextStyle(
                              color: Colors.black54, fontSize: width * 0.03),
                        ),
                        trailing: Container(
                          height: height * 0.04,
                          width: width * 0.18,
                          decoration: BoxDecoration(
                            color: ColorConstant.primaryColor,
                            borderRadius: BorderRadius.circular(width * 0.01),
                          ),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: ColorConstant.backgroundColor,
                                  fontSize: width * 0.045),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Row(
                        children: [
                          Text(
                            "Your Reaction ? ",
                            style: TextStyle(
                                color: ColorConstant.thirdColor,
                                fontSize: width * 0.055),
                          ),
                          Container(
                            height: height * 0.03,
                            width: width * 0.05,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(width * 0.005),
                                color: Colors.black12,
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: Text(
                                "$totalVotes ",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: reactions.map((reaction) {
                          return GestureDetector(
                            onTap: () => vote(reaction),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.07,
                              padding: EdgeInsets.all(width * 0.01),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius:
                                    BorderRadius.circular(width * 0.01),
                              ),
                              child: Column(
                                children: [
                                  if (reaction == "Good")
                                    Icon(Icons.sentiment_very_satisfied,
                                        size: 30, color: Colors.green),
                                  if (reaction == "Average")
                                    Icon(Icons.sentiment_neutral,
                                        size: 30, color: Colors.orange),
                                  if (reaction == "Not Good")
                                    Icon(Icons.sentiment_very_dissatisfied,
                                        size: 30, color: Colors.red),
                                  SizedBox(height: 5),
                                  Text(
                                    "${getPercentage(reaction).toStringAsFixed(1)}%",
                                    style: TextStyle(
                                        fontSize: width * 0.03,
                                        color: ColorConstant.grey),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Text(
                        "Recommended Stories",
                        style: TextStyle(
                            color: ColorConstant.thirdColor,
                            fontSize: width * 0.055),
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

                              height: height * 0.22,
                              // margin: EdgeInsets.all(width * 0.03),
                              decoration: BoxDecoration(
                                color: ColorConstant.backgroundColor,
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(
                                  //       0.3), // Black shadow with opacity
                                  //   blurRadius:
                                  //       width * 0.02, // Softness of the shadow
                                  //   spreadRadius: width *
                                  //       0.002, // How much the shadow expands
                                  //   offset: Offset(
                                  //       1, 3), // Moves shadow to bottom-right
                                  // ),
                                ],
                                //borderRadius: BorderRadius.circular(width * .02),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: width * 0.35,
                                        width: width * 0.45,
                                        child: Expanded(
                                          child: Text(
                                            " Inspiration, Planning Tips, and Heartfelt Moments for Your Dream Day",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.thirdColor,
                                                fontSize: width * 0.05,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.01),
                                            child: CircleAvatar(
                                              radius: width * 0.03,
                                              backgroundImage: AssetImage(
                                                  ImageConstant.singer),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          Row(
                                            // crossAxisAlignment:
                                            //     CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Ibrahim Sha ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.grey),
                                              ),
                                              Text(
                                                "Aug,08,2020,",
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontSize: width * 0.025),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: width * 0.4,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                                    : Icons
                                                        .bookmark_border_rounded,
                                                color: isSaved
                                                    ? ColorConstant.grey
                                                    : ColorConstant.grey,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  shape:
                                                      RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(
                                                              width * 0.03),
                                                      topRight:
                                                          Radius.circular(
                                                              width * 0.03),
                                                    ),
                                                  ),
                                                  builder: (context) {
                                                    return Container(
                                                      margin: EdgeInsets.only(
                                                        left: width * 0.02,
                                                        right: width * 0.02,
                                                        //bottom: width * 0.02,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  width *
                                                                      0.03),
                                                          topRight:
                                                              Radius.circular(
                                                                  width *
                                                                      0.03),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal:
                                                              width * 0.03,
                                                          vertical:
                                                              width * 0.03,
                                                        ),
                                                        child:
                                                            ListView.builder(
                                                          itemCount:
                                                              bottom.length,
                                                          shrinkWrap: true,
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          itemBuilder:
                                                              (context,
                                                                  index) {
                                                            return Padding(
                                                              padding: EdgeInsets
                                                                  .all(width *
                                                                      0.02),
                                                              child:
                                                                  Container(
                                                                height:
                                                                    height *
                                                                        0.05,
                                                                child: Row(
                                                                  children: [
                                                                    Icon(
                                                                      bottom[index]
                                                                          [
                                                                          "icon"],
                                                                      color: Colors
                                                                          .black,
                                                                      size: width *
                                                                          0.06,
                                                                    ),
                                                                    SizedBox(
                                                                      width: width *
                                                                          0.04,
                                                                    ),
                                                                    Text(
                                                                      bottom[index]
                                                                          [
                                                                          "title"],
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            Colors.black,
                                                                        fontSize:
                                                                            width * 0.04,
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
                                      SizedBox(
                                        height: width * 0.02,
                                      ),
                                      Container(
                                        height: width * 0.3,
                                        width: width * 0.4,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.primaryColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(width * 0.03),
                                            ),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(images[index]),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: Colors.black54,
                          );
                        },
                      ),
                      Text(
                        "Hashtags ",
                        style: TextStyle(
                            color: ColorConstant.thirdColor,
                            fontSize: width * 0.055),
                      ),
                      ListView.builder(
                        itemCount: 1, // Since we want only one row of hashtags
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          List<String> hashtags = [
                            "#wedding",
                            "#party",
                            "#event"
                          ];

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: hashtags
                                .map((tag) => Padding(
                                      padding: EdgeInsets.only(
                                          right: width *
                                              0.02), // Space between hashtags
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.02,
                                            vertical: width * 0.005),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.01),
                                          color: ColorConstant.backgroundColor,
                                          border:
                                              Border.all(color: Colors.black12),
                                        ),
                                        child: Text(
                                          tag,
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: width * 0.05),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
