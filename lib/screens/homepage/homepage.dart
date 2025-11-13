// import 'package:flutter/material.dart';
//
// import '../../widget/theme_color.dart';
//
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Container(
//         decoration:  BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomCenter,
//             colors: [
//               AppTheme.brownColor,
//               AppTheme.navyColor,
//               AppTheme.deepColor,
//             ],
//             stops: [-2, 0.35, 6],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsiveness.dart';
import 'package:portfolio/widget/text.dart';

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
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 4,
                        vertical: screenHeight(context) * 2),
                    decoration: BoxDecoration(
                      color: AppTheme.cardColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight(context) * 14),
                        text(
                          text: 'Muhammad Bilal Ahmad',
                          textColor: AppTheme.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth(context) * 6,
                        ),
                        SizedBox(height: screenHeight(context) * 1.5),
                        text(
                          text: '@bialtech271',
                          textColor: AppTheme.darkTextColor,
                          fontSize: screenWidth(context) * 4,
                        ),
                        SizedBox(height: screenHeight(context) * 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_today,
                                color: AppTheme.redColor,
                                size: screenWidth(context) * 4),
                            SizedBox(width: screenWidth(context) * 1.5),
                            text(
                              text: '17.09.2002',
                              textColor: AppTheme.darkTextColor,
                              fontSize: screenWidth(context) * 3.5,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context) * 2),
                        text(
                          text:
                              '🔸 Flutter Developer\n💡 Day by Day | Design Wizard by Night.',
                          textColor: AppTheme.darkTextColor,
                          textAlign: TextAlign.center,
                          tightHeight: 1.5,
                          fontSize: screenWidth(context) * 3.5,
                        ),
                        SizedBox(height: screenHeight(context) * 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,
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
                              text: 'Joined on Jul 28, 2024',
                              textColor: AppTheme.darkTextColor,
                              fontSize: screenWidth(context) * 3.5,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context) * 2),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 2),

                  // Bottom Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Email Card
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth(context) * 4,
                            vertical: screenHeight(context) * 2),
                        decoration: BoxDecoration(
                          color: AppTheme.emailCardColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.email, color: AppTheme.whiteColor),
                            SizedBox(height: screenHeight(context) * 0.6),
                            text(
                              text: 'bilaltech271@gmail.com',
                              textColor: AppTheme.darkTextColor,
                              textAlign: TextAlign.center,
                              fontSize: screenWidth(context) * 2.8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth(context) * 4,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth(context) * 4,
                            vertical: screenHeight(context) * 2),
                        decoration: BoxDecoration(
                          color: AppTheme.facebookColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook, color: AppTheme.whiteColor),
                            SizedBox(height: screenHeight(context) * 0.6),
                            text(
                              text: 'Muhammad Bilal Ahmad',
                              textColor: AppTheme.darkTextColor,
                              textAlign: TextAlign.center,
                              fontSize: screenWidth(context) * 2.8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///=====================Card Image =====================
          // Avatar
          Positioned(
            left: screenWidth(context) * 35,
            top: screenHeight(context) * 10,
            child: Container(
              width: screenWidth(context) * 38,
              height: screenHeight(context) * 18,
              decoration: BoxDecoration(
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
