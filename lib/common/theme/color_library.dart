import 'package:flutter/material.dart';

class ColorLibrary extends ThemeExtension<ColorLibrary> {
  final Color white;
  final Color black;
  final Color gray;
  final Color transparent;
  final Color background;
  final Color textPrimary;

  ColorLibrary._({
    required this.white,
    required this.black,
    required this.gray,
    required this.transparent,
    required this.background,
    required this.textPrimary,
  });

  factory ColorLibrary.dark() {
    return ColorLibrary._(
      white: const Color(0xFFFFFFFF),
      black: const Color(0xFF000000),
      gray: const Color(0xFF757575),
      transparent: const Color(0x00000000),
      background: const Color.fromARGB(255, 1, 6, 15),
      textPrimary: const Color(0xFFFFFFFF),
    );
  }

  factory ColorLibrary.light() {
    return ColorLibrary._(
      white: const Color(0xFFFFFFFF),
      black: const Color(0xFF000000),
      gray: const Color(0xFF757575),
      transparent: const Color(0x00000000),
      background: const Color.fromARGB(255, 239, 239, 239),
      textPrimary: const Color(0xFFFFFFFF),
    );
  }

  @override
  ThemeExtension<ColorLibrary> lerp(
      covariant ColorLibrary other,
      double t,) {
    return ColorLibrary._(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
      background: Color.lerp(background, other.background, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
    );
  }

  @override
  ThemeExtension<ColorLibrary> copyWith() {
    //ignore: override_on_non_overriding_member
    throw UnimplementedError();
  }
}
