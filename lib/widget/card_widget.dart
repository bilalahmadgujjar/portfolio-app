import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/widget/text.dart';
import 'package:portfolio/widget/theme/theme_color.dart';
import '../utils/responsiveness.dart';

class ContainerWidget extends StatelessWidget {
  final String title;
  final String body;
  final String icon;
  final Color cardColor;

  final double posLeft;
  final double posTop;
  final bool isGit;
  final bool isLinkedIn;
  final VoidCallback onTap;
  final bool isAssets;
  final double imageSize;

  const ContainerWidget({
    super.key,
    required this.title,
    required this.body,
    required this.icon,
    required this.cardColor,
    required this.posLeft,
    required this.posTop,
    this.isGit = false,
    required this.onTap,
    this.isLinkedIn = false,
    required this.isAssets,
    this.imageSize=0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * 4,
              vertical: screenHeight(context) * 2,
            ),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight(context) * 7),
                text(
                  text: title,
                  textColor: AppTheme.whiteColor,
                  fontSize: screenWidth(context) * 4,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: screenHeight(context) * 0.5),
                text(
                  text: body,
                  textColor: AppTheme.whiteColor,
                  fontSize: screenWidth(context) * 3,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: screenHeight(context) * 2,
          right: screenWidth(context) * 4,
          child: SvgPicture.asset('assets/redirect.svg'),
        ),
        isAssets == true
            ? Positioned(
                top: posTop,
                left: posLeft,
                child: Image.asset(
                  icon, // asset image
                  height: screenHeight(context) *imageSize,
                ),
              )
            : Positioned(
                top: posTop,
                left: posLeft,
                child:  SvgPicture.asset(height: screenHeight(context) * 4, 'assets/linkedin.svg'),
              ),

        isGit == true
            ? Positioned(
                top: screenHeight(context) * 3.3,
                left: screenWidth(context) * 20,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth(context) * 3,
                      vertical: screenHeight(context) * 0.3),
                  decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: text(
                    text: 'Follow',
                    fontWeight: FontWeight.w500,
                    textColor: AppTheme.githubColor,
                    fontSize: screenWidth(context) * 3,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
