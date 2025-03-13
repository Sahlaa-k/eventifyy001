import 'package:eventify001/constants/color_constant.dart';
import 'package:flutter/material.dart';

import '../../../constants/image_constant.dart';
import '../../../main.dart';

class CommunityViewPage extends StatefulWidget {
  const CommunityViewPage({super.key});

  @override
  State<CommunityViewPage> createState() => _CommunityViewPageState();
}

class _CommunityViewPageState extends State<CommunityViewPage> {
  bool like = false;
  TextEditingController searchController = TextEditingController();
  bool isSearching = false;
  final TextEditingController searchController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: ColorConstant.backgroundColor,
        backgroundColor: ColorConstant.backgroundColor,
        leading: GestureDetector(
          onTap: () {
            if (isSearching) {
              setState(() {
                isSearching = false;
                searchController1.clear();
              });
            } else {
              Navigator.pop(context);
            }
          },
          child: Icon(
            isSearching ? Icons.close : Icons.arrow_back_ios,
            color: ColorConstant.thirdColor,
            size: width * 0.08,
          ),
        ),
        title: isSearching
            ? TextFormField(
          controller: searchController1,
          autofocus: true,
          style: TextStyle(color: ColorConstant.thirdColor),
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: ColorConstant.thirdColor),
            border: InputBorder.none,
          ),
        )
            : Spacer(),
        actions: !isSearching
            ? [
          GestureDetector(
            onTap: () {
              setState(() {
                isSearching = true;
              });
            },
            child: Icon(
              Icons.search,
              color: ColorConstant.thirdColor,
              size: width * 0.08,
            ),
          ),
        ]
            : [],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(width * 0.02),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: width * 0.06,
                        backgroundImage: AssetImage(ImageConstant.car),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adison",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                          Row(
                            children: [
                              Text(
                                "/Manipal Finance",
                                style: TextStyle(
                                    color: ColorConstant.thirdColor
                                        .withOpacity(0.4),
                                    fontSize: width * 0.023),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "9:34 AM",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ColorConstant.thirdColor
                                        .withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              like = !like;
                              setState(() {});
                            },
                            child: Icon(
                                like ? Icons.favorite_border : Icons.favorite,
                                color: ColorConstant.primaryColor),
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                                fontSize: width * 0.03,
                                color:
                                    ColorConstant.thirdColor.withOpacity(0.4)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Hi! Please help me to find hashtag for wedding names -Akshaya & Ajith. Thanks!",
                    style: TextStyle(
                        color: ColorConstant.thirdColor,
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: width * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ios_share_outlined,
                        color: ColorConstant.primaryColor,
                        size: width * 0.03,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "share",
                        style: TextStyle(
                          color: ColorConstant.primaryColor,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width * 0.02,
                  ),

                  Row(
                    children: [
                      Text(
                        "Replies",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                            color: ColorConstant.thirdColor.withOpacity(0.4),
                            fontSize: width * 0.04),
                      ),
                    ],
                  ),
                  Divider(
                    color: ColorConstant.thirdColor.withOpacity(0.4),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: width * 0.06,
                                backgroundImage: AssetImage(ImageConstant.car),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Adison",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.04),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "/Manipal Finance",
                                        style: TextStyle(
                                            color: ColorConstant.thirdColor
                                                .withOpacity(0.4),
                                            fontSize: width * 0.023),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        "9:34 AM",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: ColorConstant.thirdColor
                                                .withOpacity(0.4)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
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
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: width * 0.03,
                                        color: ColorConstant.thirdColor
                                            .withOpacity(0.4)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            "Hi! Please help me to find hashtag for wedding names -Akshaya & Ajith. Thanks!",
                            style: TextStyle(
                              color: ColorConstant.thirdColor,
                              fontSize: width * 0.04,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              " Reply",
                              style: TextStyle(
                                color: ColorConstant.primaryColor,
                                fontSize: width * 0.03,
                              ),
                            ),
                          ),
                          Text(
                            "view 4 replies",
                            style: TextStyle(
                                color:
                                    ColorConstant.thirdColor.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width * 1,
              height: height * 0.07,
              decoration: BoxDecoration(
                color: ColorConstant.backgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width * 0.02),
                  topLeft: Radius.circular(width * 0.02),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.thirdColor.withOpacity(0.3),
                    blurRadius: 4,
                    spreadRadius: 3,
                    offset: Offset(0,0),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: width * 0.06,
                      backgroundImage: AssetImage(ImageConstant.car),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(

                          hintText: "Add a comment for.......",
                          hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: width*0.04,
                              fontWeight: FontWeight.w600),

                          filled: true,
                          fillColor: Colors.white,
enabledBorder:OutlineInputBorder(
    borderRadius:
    BorderRadius.circular(width * .03),
    borderSide: BorderSide.none,
    // BorderSide(color: ColorConstant.primaryColor, width: width * .006),
    ) ,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(width * .03),
                            borderSide: BorderSide.none,
                            // BorderSide(color: ColorConstant.primaryColor, width: width * .006),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: ColorConstant.backgroundColor,
    );
  }
}
