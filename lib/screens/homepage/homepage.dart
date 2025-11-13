import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF543233), // reddish tint top
              Color(0xFF0D1021), // deep navy mid
              Color(0xFF150035), // purple base
            ],
            stops: [-2, 0.35, 1.0],
          ),
        ),
      ),
    );
  }
}
