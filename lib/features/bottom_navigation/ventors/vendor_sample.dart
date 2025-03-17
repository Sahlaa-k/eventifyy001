import 'package:carousel_slider/carousel_slider.dart';

import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

import '../../../core/constants/color_constant.dart';
import '../../../core/constants/image_constant.dart';
class VendorSample extends StatefulWidget {
  final Map<String, dynamic> vender;
  const VendorSample({super.key, required this.vender});

  @override
  State<VendorSample> createState() => _VendorSampleState();
}

class _VendorSampleState extends State<VendorSample> {

  int selectindex = 0;
  List images = [
    ImageConstant.singer,
    ImageConstant.car,
    ImageConstant.jewellery2
  ];

  List<Map<String, dynamic>> products_list = [
    {
      "product_Id":"1000",
      "product_image":"https://i.pinimg.com/564x/7a/21/33/7a2133d0dd9d8cfc8ddba57709e99024.jpg",
      "product_category":"T-shirt",
      "product_name":"Essential Tee",
      "product_color":"Blue",
      "product_material":"cotton",
      "product_size":"MEDIUM",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1001",
      "product_image":"https://i.pinimg.com/736x/67/98/b9/6798b924f036fdf5eb69c7ca30bb59b6.jpg",
      "product_category":"T-shirt",
      "product_name":"Ribbed Tank",
      "product_color":"Blue",
      "product_material":"polister",
      "product_size":"2XL",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1002",
      "product_image":"https://i.pinimg.com/564x/0f/58/34/0f58346f60b8197cfdba8dd4fde133a5.jpg",
      "product_category":"T-shirt",
      "product_name":"Essential Das",
      "product_color":"Red",
      "product_material":"mix",
      "product_size":"MEDIUM",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1003",
      "product_image":"https://i.pinimg.com/564x/7a/21/33/7a2133d0dd9d8cfc8ddba57709e99024.jpg",
      "product_category":"T-shirt",
      "product_name":"Over-Sized",
      "product_color":"Green",
      "product_material":"cotton",
      "product_size":"MEDIUM",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1004",
      "product_image":"https://i.pinimg.com/564x/1f/25/1a/1f251a47c420afe44cbb0c1a251194f7.jpg",
      "product_category":"T-shirt",
      "product_name":"Hoodies",
      "product_color":"black",
      "product_material":"cotton",
      "product_size":"XL",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1005",
      "product_image":"https://i.pinimg.com/736x/80/94/60/80946097972a22270e88c60ba43d4106.jpg",
      "product_category":"Pant",
      "product_name":"Bagi",
      "product_color":"brown",
      "product_material":"jean",
      "product_size":"SMALL",
      "product_price":100,
      "product_quantity":1,
    },
    {
      "product_Id":"1006",
      "product_image":"https://i.pinimg.com/564x/19/fe/6c/19fe6c8be0dd600f560371c5d3fe73e5.jpg",
      "product_category":"Pant",
      "product_name":"korean",
      "product_color":"black",
      "product_material":"cotton",
      "product_size":"LARGE",
      "product_price":100,
      "product_quantity":1,
    },
    
  ];

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

  bool viewAll = false;
  bool favorite01= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: height*.5,width: width*1,
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
                )
            ],
          ),
              ),
      ),
    );
  }
}