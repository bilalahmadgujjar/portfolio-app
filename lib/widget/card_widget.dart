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
  final bool isDev;
  final double posLeft;
  final double posTop;
  final bool isGit;
  final bool isLinkedIn;
  final VoidCallback onTap;

  const
  ContainerWidget({
    super.key,
    required this.title,
    required this.body,
    required this.icon,
    required this.cardColor,
    this.isDev = false,
    required this.posLeft,
    required this.posTop,
    this.isGit = false,
    required this.onTap,
    this.isLinkedIn=false,
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
              // SvgPicture.asset(
              //           icon,
              //           height: screenHeight(context) * 6,
              //         ),
              //   SizedBox(height: screenHeight(context) * 1),
                SizedBox(height: screenHeight(context) * 7),

                text(
                  text: title,
                  textColor: isDev==true?AppTheme.githubColor: AppTheme.whiteColor,
                  fontSize: screenWidth(context) * 4,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: screenHeight(context) * 0.5),
                text(
                  text: body,
                  textColor: isDev==true?AppTheme.githubColor: AppTheme.whiteColor,
                  fontSize: screenWidth(context) * 3,
                ),
              ],
            ),
          ),
        ),
      isDev==true?
      Positioned(
        top: screenHeight(context) * 2,
        right: screenWidth(context) * 4,
        child: SvgPicture.asset('assets/redirect.svg',
          colorFilter:ColorFilter.mode(AppTheme.githubColor, BlendMode.srcIn),),
      ):Positioned(
          top: screenHeight(context) * 2,
          right: screenWidth(context) * 4,
          child: SvgPicture.asset('assets/redirect.svg'),
        ),

        Positioned(
          top: posTop,
          left: posLeft,
          child: isLinkedIn==true?SvgPicture.asset(
            height: screenHeight(context)*5,
              icon

          ):SvgPicture.asset(icon),
        ),


        isGit==true?Positioned(
          top: screenHeight(context)*3.3,
          left: screenWidth(context)*20,
          child:   Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth(context)*3,vertical: screenHeight(context)*0.3),
            decoration: BoxDecoration(
              color: AppTheme.whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: text(
              text: 'Follow',
              fontWeight: FontWeight.w500,
              textColor:AppTheme.githubColor,
              fontSize: screenWidth(context) * 3,
            ),
          ),
        ):const SizedBox(),


        isLinkedIn==true?Positioned(
          top: screenHeight(context)*3.3,
          left: screenWidth(context)*20,
          child:   Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth(context)*3,vertical: screenHeight(context)*0.3),
            decoration: BoxDecoration(
              color: AppTheme.whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: text(
              text: 'Follow',
              fontWeight: FontWeight.w500,
              textColor:AppTheme.linkedInColor,
              fontSize: screenWidth(context) * 3,
            ),
          ),
        ):const SizedBox(),



      ],
    );
  }
}
