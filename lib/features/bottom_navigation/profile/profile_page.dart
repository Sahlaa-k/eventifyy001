import 'package:eventify001/constants/color_constant.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                          colors: [ColorConstant.secondaryColor, ColorConstant.primaryColor],
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
                    height: height*0.25,
                    child: Padding(
                      padding:  EdgeInsets.only(
                          right:width*0.05),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.settings, color: Colors.white, size: 28),
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
              SizedBox(height:height*0.02),
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

              // Follow & Message Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: height*0.04,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.05),
                        color:Colors.pink.shade300,
                      ),
                      child: Center(
                        child: Text("FOLLOW",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorConstant.backgroundColor
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.03),
                  GestureDetector(
                    onTap: () {

                    },

                    child:  Container(
                      height: height*0.04,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.05),
                        border: Border.all(color: Colors.pink.shade300)
                      ),
                      child: Center(
                        child: Text("MESSAGE",
                            style: TextStyle(color: Colors.pink)),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Stats Section
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

              SizedBox(height: 20),

              // Works Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My works",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("View all", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Work Thumbnails
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    workThumbnail("assets/nature.jpg", "Nature"),
                    workThumbnail("assets/art.jpg", "My Art"),
                    workThumbnail("assets/portrait.jpg", "Portraits"),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Social Media Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, color: Colors.grey),
                  SizedBox(width: 5),
                  Text("@CarolArt", style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 20),
                  Icon(Icons.photo_library, color: Colors.grey),
                  SizedBox(width: 5),
                  Text("@SteeleCarol", style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Function to generate work thumbnails
  Widget workThumbnail(String imagePath, String title) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath,
                width: 80, height: 80, fit: BoxFit.cover),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

// Custom Clipper for the Top Curved Background
class BottomInsideCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height); // Bottom left
    path.quadraticBezierTo(
        size.width * 0.5, size.height - 100, size.width, size.height); // Inside curve
    path.lineTo(size.width, 0); // Top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
