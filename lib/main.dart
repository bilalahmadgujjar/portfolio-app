import 'package:flutter/material.dart';
import 'package:portfolio/screens/homepage/homepage.dart';
import 'package:portfolio/widget/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            textScaler:
                const TextScaler.linear(1.0), // prevent font scaling issues
          ),
          child: child!,
        );
      },
    );
  }
}
