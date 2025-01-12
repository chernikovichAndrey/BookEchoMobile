import 'package:book_echo/common/extensions/build_context.dart';
import 'package:book_echo/common/images/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xffa7a5a6),
        alignment: Alignment.center,
        child: Image.asset(AppAssets.images.logo, fit: BoxFit.fitWidth)
            .animate()
            .fadeOut(delay: 2.seconds, duration: 1.seconds)
            .callback(
          callback: (value) {},
        ),
      ),
    );
  }
}
