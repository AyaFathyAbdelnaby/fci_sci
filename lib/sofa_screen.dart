import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SofaScreen extends StatelessWidget {
  const SofaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            // child: Image.asset('assets/images/splash.png'),
            child: SvgPicture.asset('assets/svg/gears-solid.svg'),
            ),
        ],
      ),
    );
  }
}