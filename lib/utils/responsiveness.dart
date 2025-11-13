import 'package:flutter/material.dart';

///TODO this is size that use for the responsiveness in app
/// Returns 1% of the shortest side of the screen (width unit).
double screenWidth(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return size.shortestSide / (isTablet(context) ? 180 : 100);
}

/// Returns 1% of the longest side of the screen (height unit).
double screenHeight(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return size.longestSide / (isTablet(context) ? 170 : 100);
}

///============= Check its is tablet=============
bool isTablet(BuildContext context) {
  final shortestSide = MediaQuery.of(context).size.shortestSide;
  return shortestSide >= 600; // 600dp breakpoint for tablets
}

///============= Check orientation =============
/// Returns true if device is in portrait mode.
bool isPortrait(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}

/// Returns true if device is in landscape mode.
bool isLandscape(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.landscape;
}
