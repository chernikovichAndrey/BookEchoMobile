import 'package:book_echo/common/theme/color_library.dart';
import 'package:book_echo/common/theme/text_styles_library.dart';
import 'package:flutter/material.dart';

abstract class AppThemeData {
  static final ColorLibrary darkColorLibrary = ColorLibrary.dark();
  static final TextStylesLibrary darkTextLibrary =
  TextStylesLibrary.fromColorLibrary(from: darkColorLibrary);

  static final ColorLibrary lightColorLibrary = ColorLibrary.light();
  static final TextStylesLibrary lightTextLibrary =
  TextStylesLibrary.fromColorLibrary(from: lightColorLibrary);

  static final ThemeData darkThemeData = ThemeData(
    scaffoldBackgroundColor: darkColorLibrary.background,
    brightness: Brightness.dark,
    extensions: [
      darkColorLibrary,
      darkTextLibrary,
    ],
  );

  static final ThemeData lightThemeData = ThemeData(
    scaffoldBackgroundColor: darkColorLibrary.background,
    brightness: Brightness.light,
    extensions: [
      darkColorLibrary,
      darkTextLibrary,
    ],
  );
}