import 'package:eventify001/features/bottom_navigation/profile/profile_page.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color_constant.dart';


class UsersProfilePage extends StatefulWidget {
  const UsersProfilePage({super.key});

  @override
  State<UsersProfilePage> createState() => _UsersProfilePageState();
}

class _UsersProfilePageState extends State<UsersProfilePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> highlights = [
      {"image": "https://via.placeholder.com/150", "title": "Travel"},
      {"image": "https://via.placeholder.com/150", "title": "Food"},
      {"image": "https://via.placeholder.com/150", "title": "Friends"},
      {"image": "https://via.placeholder.com/150", "title": "Work"},
      {"image": "https://via.placeholder.com/150", "title": "Work"},
      {"image": "https://via.placeholder.com/150", "title": "Work"},
    ];
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: height * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: BottomInsideCurveClipper(),
                      child: Container(
                        height: height * 0.3,
                        width: width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ColorConstant.secondaryColor,
                              ColorConstant.primaryColor
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.08,
                      left: 20,
                      child:
                      Icon(Icons.arrow_back, color: Colors.white, size: 28),
                    ),
                    SizedBox(
                      height: height * 0.25,
                      child: Padding(
                        padding: EdgeInsets.only(right: width * 0.05),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.settings,
                              color: Colors.white, size: 28),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.3,
                      child: Align(
                        alignment: Alignment(0.04, 0.9),
                        child: CircleAvatar(
                          radius: width * 0.15,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Caroline Steele",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Photographer and Artist",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.primaryColor),
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: ColorConstant.backgroundColor,
                        ),
                        child: Center(
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.thirdColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            border:
                            Border.all(color: ColorConstant.primaryColor)),
                        child: Center(
                          child: Text("Share profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.thirdColor)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("674",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("PHOTOS")
                      ],
                    ),
                    Column(
                      children: [
                        Text("15K",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("FOLLOWERS")
                      ],
                    ),
                    Column(
                      children: [
                        Text("23K",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("FOLLOWING")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                Container(
                  height: width * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: highlights.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: Colors.pink, width: 2),
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                NetworkImage(highlights[index]["image"]!),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              highlights[index]["title"]!,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: width * 0.03),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
