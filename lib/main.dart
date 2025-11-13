import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/homepage/homepage.dart';
import 'package:portfolio/widget/theme.dart';
import 'package:portfolio/widget/theme_color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /// Set proper edge-to-edge display mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: AppTheme.brownColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,

          ///=========================================================================
          ///========================== Navigation bar ===========================
          ///========================================================================

          systemNavigationBarColor:
              AppTheme.deepColor, //navigation bar background
          systemNavigationBarIconBrightness:
              Brightness.dark, // navigation bar icons
        ),
        child: Container(
          color: AppTheme.navyColor,
          child: SafeArea(
            child: MaterialApp(
              title: 'Portfolio',
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.system, // auto switch based on device
              theme: lightTheme,
              darkTheme: darkTheme,
              home: const Homepage(),
              builder: (context, child) {
                // Ensure responsiveness applies to all screens
                final mediaQuery = MediaQuery.of(context);
                return MediaQuery(
                  data: mediaQuery.copyWith(
                    textScaler: const TextScaler.linear(
                        1.0), // prevent font scaling issues
                  ),
                  child: child!,
                );
              },
            ),
          ),
        ));
  }
}
