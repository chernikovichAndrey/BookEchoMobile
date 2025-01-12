import 'package:book_echo/common/theme/color_library.dart';
import 'package:flutter/material.dart';

class TextStylesLibrary extends ThemeExtension<TextStylesLibrary> {
  final TextStyle header;
  final TextStyle regular14;
  final TextStyle regular16;
  final TextStyle medium14;
  final TextStyle medium16;
  final TextStyle semiBold14;
  final TextStyle semiBold16;
  final TextStyle bold14;
  final TextStyle bold16;

  TextStylesLibrary._({
    required this.header,
    required this.regular14,
    required this.regular16,
    required this.medium14,
    required this.medium16,
    required this.semiBold14,
    required this.semiBold16,
    required this.bold14,
    required this.bold16,
  });

  factory TextStylesLibrary.fromColorLibrary({required ColorLibrary from}) {
    return TextStylesLibrary._(
      header: TextStyle(
        fontSize: 32,
        color: from.textPrimary,
        fontWeight: FontWeight.w400,
      ),
      regular14: TextStyle(
        fontSize: 14,
        color: from.textPrimary,
        fontWeight: FontWeight.w400,
      ),
      regular16: TextStyle(
        fontSize: 16,
        color: from.textPrimary,
        fontWeight: FontWeight.w400,
      ),
      medium14: TextStyle(
        fontSize: 14,
        color: from.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      medium16: TextStyle(
        fontSize: 16,
        color: from.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      semiBold14: TextStyle(
        fontSize: 14,
        color: from.textPrimary,
        fontWeight: FontWeight.w600,
      ),
      semiBold16: TextStyle(
        fontSize: 16,
        color: from.textPrimary,
        fontWeight: FontWeight.w600,
      ),
      bold14: TextStyle(
        fontSize: 16,
        color: from.textPrimary,
        fontWeight: FontWeight.w700,
      ),
      bold16: TextStyle(
        fontSize: 16,
        color: from.textPrimary,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  @override
  ThemeExtension<TextStylesLibrary> lerp(
    covariant TextStylesLibrary other,
    double t,
  ) {
    return TextStylesLibrary._(
      header: TextStyle.lerp(header, other.header, t)!,
      regular14: TextStyle.lerp(regular14, other.regular14, t)!,
      regular16: TextStyle.lerp(regular16, other.regular16, t)!,
      medium14: TextStyle.lerp(medium14, other.medium14, t)!,
      medium16: TextStyle.lerp(medium16, other.medium16, t)!,
      semiBold14: TextStyle.lerp(semiBold14, other.semiBold14, t)!,
      semiBold16: TextStyle.lerp(semiBold16, other.semiBold16, t)!,
      bold14: TextStyle.lerp(bold14, other.bold14, t)!,
      bold16: TextStyle.lerp(bold16, other.bold16, t)!,

    );
  }

  @override
  //ignore: override_on_non_overriding_member
  ThemeExtension<TextStylesLibrary> copyWith() {
    throw UnimplementedError();
  }
}
