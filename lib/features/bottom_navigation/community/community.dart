import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';

class CommunityTab extends StatefulWidget {
  const CommunityTab({super.key});

  @override
  State<CommunityTab> createState() => _CommunityTabState();
}

class _CommunityTabState extends State<CommunityTab> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConstant.primaryColor,

    );
  }
}
