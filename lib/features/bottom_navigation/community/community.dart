import 'package:eventify001/constants/image_constant.dart';
import 'package:eventify001/features/bottom_navigation/community/view_community_page.dart';
import 'package:flutter/material.dart';
import '../../../constants/color_constant.dart';
import '../../../main.dart';

class CommunityTab extends StatefulWidget {
  const CommunityTab({super.key});

  @override
  State<CommunityTab> createState() => _CommunityTabState();
}

class _CommunityTabState extends State<CommunityTab> {
  List<Map<String, dynamic>> categories = [
    {
      "image": ImageConstant.photoGrapher2,
      "title": "Anniversary",
    },
    {
      "image": ImageConstant.marriage,
      "title": "Engagement",
    },
    {
      "image": ImageConstant.eventManagementStage,
      "title": "Baby shower",
    },
    {
      "image": ImageConstant.car,
      "title": "House Warming",
    },
  ];
  final List<Map<String, dynamic>> comments = [
    {
      "name": "Jesselyn Ang",
      "handle": "@jesselynang",
      "text": "Apakah ada informasi penyebab masalahnya?",
      "likes": 24
    },
    {
      "name": "Jennifer Ang",
      "handle": "@jenniferang",
      "text": "Sepertinya terdapat permasalahan di mesin bus tersebut",
      "likes": 2
    },
    {
      "name": "Jo"
          "nathan Ang",
      "handle": "@jonathanang",
      "text": "Terima kasih atas informasinya @Jennifer Ang",
      "likes": 2
    },
    {
      "name": "Johan Ang",
      "handle": "@johanang",
      "text": "Apakah ini diakibatkan oleh masalah di mesin bus tersebut?",
      "likes": 324
    },
  ];
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min, // Ensures it doesn’t take infinite height
          children: [
            Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Communities Title
                  Text(
                    "Top Communities",
                    style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.06,
                    ),
                  ),
                  SizedBox(height: width * 0.03),
                  SizedBox(
                    height: height * 0.13,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: categories.length,
                      padding: EdgeInsets.all(width * 0.02),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorConstant.primaryColor,
                              radius: width * 0.08,
                              backgroundImage:
                                  AssetImage(categories[index]["image"]),
                            ),
                            SizedBox(height: 5),
                            Text(
                              categories[index]["title"],
                              style: TextStyle(color: ColorConstant.thirdColor),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (_, __) => SizedBox(width: 20),
                    ),
                  ),
                  SizedBox(height: width * 0.04),

                  // What’s on your mind? Post Box
                  Container(
                    padding: EdgeInsets.all(width * 0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.primaryColor),
                      borderRadius: BorderRadius.circular(width * 0.02),
                      color: ColorConstant.primaryColor.withOpacity(0.05),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorConstant.primaryColor,
                              radius: width * 0.05,
                              backgroundImage:
                                  AssetImage(ImageConstant.dance_singer),
                            ),
                            SizedBox(width: width * 0.02),
                            Expanded(
                              child: Text(
                                "What do you think right now?",
                                style: TextStyle(
                                  color: ColorConstant.primaryColor,
                                  fontSize: width * 0.045,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Post",
                            style: TextStyle(
                              color: ColorConstant.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.055,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CommunityViewPage(),
                          ));
                    },
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.03),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    ColorConstant.thirdColor.withOpacity(0.3),
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: width * 0.045,
                                    backgroundImage:
                                        AssetImage(ImageConstant.car),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Adison",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.04),
                                      ),
                                      Text(
                                        "/Manipal Finance",
                                        style: TextStyle(
                                            color: ColorConstant.thirdColor
                                                .withOpacity(0.4),
                                            fontSize: width * 0.023),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "9:34 AM",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConstant.thirdColor
                                            .withOpacity(0.4)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "What are some of the best websites to stay updated on financial news?",
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      like = !like;
                                      setState(() {});
                                    },
                                    child: Icon(
                                        like
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color: ColorConstant.primaryColor),
                                  ),
                                  SizedBox(width: 8),
                                  Text("12"),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(Icons.chat_bubble_outline),
                                    onPressed: () {},
                                  ),
                                  Text("6"),
                                  SizedBox(width: 8),
                                  IconButton(
                                    icon: Icon(Icons.share),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ],
                              ),

                            ],
                          ),

                        );
                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: height*0.01,); },
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
