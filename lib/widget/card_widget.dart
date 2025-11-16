
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

  const ContainerWidget({
    super.key,
    required this.title,
    required this.body,
    required this.icon,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
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
              SvgPicture.asset(icon,height: screenHeight(context)*6,),

              SizedBox(height: screenHeight(context) * 1),

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

        Positioned(
          top: screenHeight(context) *2,
          right: screenWidth(context) * 4,
          child: SvgPicture.asset('assets/redirect.svg' ),
        ),
      ],
    );
  }
}

