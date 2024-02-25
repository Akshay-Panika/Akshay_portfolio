import 'package:flutter/material.dart';

import 'Screeen_view/Home_folder/home_screen.dart';

void main() {
  runApp(const AkshayPortfolio());
}

class AkshayPortfolio extends StatelessWidget {
  const AkshayPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}