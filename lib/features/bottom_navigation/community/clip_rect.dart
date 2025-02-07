
import 'package:flutter/cupertino.dart';

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double arrowSize = 20.0;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - arrowSize, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - arrowSize, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}