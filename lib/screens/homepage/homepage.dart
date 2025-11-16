import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsiveness.dart';
import 'package:portfolio/widget/text.dart';

import '../../widget/card_widget.dart';
import '../../widget/theme/theme_color.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * 4,
                vertical: screenHeight(context) * 2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  AppTheme.brownColor,
                  AppTheme.navyColor,
                  AppTheme.deepColor,
                ],
                stops: const [-2, 0.35, 6],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Card
                  SizedBox(
                    height: screenHeight(context) * 17,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 4,
                        vertical: screenHeight(context) * 2),
                    decoration: BoxDecoration(
                      color: AppTheme.cardColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight(context) * 12),
                        Center(
                          child: text(
                            text: 'Muhammad Bilal Ahmad',
                            textColor: AppTheme.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth(context) * 6,
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.5),
                        Center(
                          child: text(
                            text: '@bilalahmad',
                            textColor: AppTheme.darkTextColor,
                            fontSize: screenWidth(context) * 4,
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 2),
                        text(
                          text:
                              '   🔸17.09.2002\n   🔸Flutter Developer\n   💡 Day by Day | Design Wizard by Night.',
                          textColor: AppTheme.darkTextColor,
                          tightHeight: 1.5,
                          fontSize: screenWidth(context) * 3.5,
                        ),
                        SizedBox(height: screenHeight(context) * 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: AppTheme.darkTextColor,
                                size: screenWidth(context) * 4),
                            SizedBox(width: screenWidth(context) * 1.5),
                            text(
                              text: 'Lahore, Pakistan',
                              textColor: AppTheme.darkTextColor,
                              fontSize: screenWidth(context) * 3.5,
                            ),
                            SizedBox(width: screenWidth(context) * 3),
                            Icon(Icons.calendar_month,
                                color: AppTheme.darkTextColor,
                                size: screenWidth(context) * 4.5),
                            SizedBox(width: screenWidth(context) * 1.5),
                            text(
                              text: 'Joined on July 28, 2024',
                              textColor: AppTheme.darkTextColor,
                              fontSize: screenWidth(context) * 3.5,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context) * 3),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 2),

                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(context) * 4,
                          vertical: screenHeight(context) * 1),
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: ContainerWidget(
                                title: 'Email',
                                body: 'bilaltech271@gmail.com',
                                icon: 'assets/mail.svg',
                                cardColor: AppTheme.emailCardColor,
                              ),
                            ),
                            SizedBox(
                                width: screenWidth(context) * 2), // small gap
                            Expanded(
                              child: ContainerWidget(
                                title: 'Facebook',
                                body: '@bilalahmad',
                                icon: 'assets/facebook.svg',
                                cardColor: AppTheme.facebookColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight(context) * 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ContainerWidget(
                                title: 'GitHub',
                                body: '@bilalahmadgujjar',
                                icon: 'assets/git.svg',
                                cardColor: AppTheme.githubColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight(context) * 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: ContainerWidget(
                                title: 'Figma',
                                body: '@bilalahmad',
                                icon: 'assets/figma.svg',
                                cardColor: AppTheme.figmaColor,
                              ),
                            ),
                            SizedBox(
                                width: screenWidth(context) * 2), // small gap
                            Expanded(
                              child: ContainerWidget(
                                title: 'Developer',
                                body: '@bilalahmad',
                                isDev: true,
                                icon: 'assets/dev.svg',
                                cardColor: AppTheme.devColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          ///=====================Card Image =====================

          Positioned(
            left: screenWidth(context) * 35,
            top: screenHeight(context) * 10,
            child: Container(
              width: screenWidth(context) * 38,
              height: screenHeight(context) * 18,
              decoration: BoxDecoration(
                color: AppTheme.picColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/avatar.png', // Replace with your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
