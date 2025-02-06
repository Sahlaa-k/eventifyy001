import 'package:eventify001/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import '../../../main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: ColorConstant.secondaryColor,
            actions: [
              LineIcon.search(
                size: width*0.09,
              )
            ],
            pinned: true,
            floating: true,
            expandedHeight: height*0.2,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Appbar",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              background: Image.asset("assets/image/cake2.webp",
                fit: BoxFit.fitWidth,
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount:15,
                    (context, index) {
                  return ListTile(

                  );
                },
              )
          )
        ],
      ),
    );
  }
}
