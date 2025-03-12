import 'package:eventify001/constants/color_constant.dart';
import 'package:eventify001/constants/image_constant.dart';
import 'package:eventify001/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

class ViewProduct extends StatefulWidget {
  final Map<String, dynamic> product;
  const ViewProduct({
    super.key,
    required this.product,
  });

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  int? maxLines = 2;
  // List<String> a=['kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk'];
  String a =
      "Google is an American multinational corporation that offers a wide range of services and products, including search, email, maps, and video";

  List<Map<String, dynamic>> categories = [
    {"Category_name": "Cake", "Category_image": ImageConstant.cake2},
    {
      "Category_name": "Photography",
      "Category_image": ImageConstant.photoGrapher3
    },
    {
      "Category_name": "Stage ",
      "Category_image": ImageConstant.eventManagementStage
    },
    {"Category_name": "Car", "Category_image": ImageConstant.car},
    {"Category_name": "Gift", "Category_image": ImageConstant.gift},
    {"Category_name": "Dancers", "Category_image": ImageConstant.dance},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: height * .45,
                width: width * 1,
                decoration: BoxDecoration(
                    // border: Border.all(),
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.product['product_image'],
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .05,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                          children: [
                            SizedBox(
                              width: width * .04,
                            ),
                            Container(
                              height: height * .05,
                              width: height * .05,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: ColorConstant.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: width*.05,),
                        Wrap(
                          children: [
                            Container(
                              height: height * .05,
                              width: height * .05,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(Icons.favorite_border_rounded,
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                            SizedBox(
                              width: width * .02,
                            ),
                            Container(
                              height: height * .05,
                              width: height * .05,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(Icons.share,
                                    size: height * .025,
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                            SizedBox(
                              width: width * .04,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .25,
                    ),
                    // Text(widget.vender['Category_name']),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: height * .09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(width * .015)),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.005,
                                right: width * 0.005,
                                top: width * 0.005,
                                bottom: width * 0.005),
                            child: Center(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: categories.length,
                                padding: EdgeInsets.only(
                                    left: width * 0.005, right: width * 0.005),
                                scrollDirection: Axis.horizontal,

                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        top: width * 0.015,
                                        bottom: width * 0.015,
                                        left: width * 0.005,
                                        right: width * 0.005),
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(width * .02)),
                                          // border: Border.all(),
                                          color: const Color.fromARGB(
                                              19, 0, 0, 0)),
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
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(width * .04),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cake",
                          style: TextStyle(
                              fontSize: width * .045, color: Colors.black54),
                        ),
                        Wrap(
                          // crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            Icon(Icons.star_rounded,
                                color: Colors.yellow, size: width * .06),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * .01, right: width * .01),
                              child: Text(
                                "4.5",
                                style: TextStyle(fontSize: width * .05),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    // SizedBox(height: width*.005,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                              fontSize: width * .06,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: width * .02,
                        ),
                        Text(
                          "Seller",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: width * .04,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(width * .02),),color: ColorConstant.primaryColor.withOpacity(.15)),
                          child: ListTile(
                            
                            contentPadding: EdgeInsets.only(right: width * .025,left: width * .025),
                            titleAlignment: ListTileTitleAlignment.center,
                            subtitleTextStyle: TextStyle(
                                color: Colors.black45, fontSize: width * .035),
                            leading: CircleAvatar(backgroundColor: ColorConstant.backgroundColor,child: Center(child: Icon(Icons.account_circle_sharp,color: ColorConstant.primaryColor,),),),
                            title: Text(
                              "Seller Name",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text("Seller catogery"),
                            trailing: Wrap(
                              children: [
                                Container(
                                  height: height * .05,
                                  width: height * .05,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.message_outlined,
                                        size: height * .025, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print(maxLines);
                                  },
                                  child: Container(
                                    height: height * .05,
                                    width: height * .05,
                                    decoration: BoxDecoration(
                                      // border: Border.all(color: ColorConstant.primaryColor,width: 2.5),
                                      // color: Colors.white,
                                      color: ColorConstant.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(Icons.phone_outlined,
                                          size: height * .025,
                                          color: Colors.white),
                                      // LineIcon.phone()
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width * .02,
                        ),
                        Text(
                          "Discription",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * .04,
                              fontWeight: FontWeight.w600),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: maxLines,
                              a,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: width * .04,
                                  fontWeight: FontWeight.w600),
                            ),
                            maxLines==2?
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    maxLines = null;
                                  });
                                  // x=null;
                                },
                                child: SizedBox(
                                    child: Text(
                                  "More..",
                                  style: TextStyle(
                                      color: Colors.blue[300],
                                      fontSize: width * .04,
                                      fontWeight: FontWeight.w600),
                                ))):SizedBox(),
                          ],
                        ),
                        Divider(),

                      ],
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.all(width*.025),
        child: Container(
          // height: height*.1,
        width: width*1,
        decoration: BoxDecoration(border: Border.all(color: ColorConstant.primaryColor.withOpacity(.5),width: width*.01), borderRadius: BorderRadius.all(Radius.circular(width*.08)),color: Colors.white),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width*.025),
              child: SizedBox(height: height*.07, child: Center(child: Text("data",style: TextStyle(color: Colors.black,fontSize: width*.05,fontWeight: FontWeight.w600),),),),
            ),
            
            Padding(
              padding: EdgeInsets.all(width*.025),
              child: Container(
                height: height*.07,
                width: width*.3,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(width*.05)),color: ColorConstant.primaryColor),
                child: Center(child: Text("Enquire",style: TextStyle(color: Colors.white,fontSize: width*.05,fontWeight: FontWeight.w600),),),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
