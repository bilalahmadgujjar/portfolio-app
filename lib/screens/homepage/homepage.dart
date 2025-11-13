import 'package:flutter/material.dart';

import '../../widget/theme_color.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.brownColor,
              AppTheme.navyColor,
              AppTheme.deepColor,
            ],
            stops: [-2, 0.35, 6],
          ),
        ),
      ),
    );
  }
}
