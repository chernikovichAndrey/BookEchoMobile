import 'package:book_echo/common/localization/generated/l10n.dart';
import 'package:book_echo/common/routing/routes.dart';
import 'package:book_echo/common/theme/color_library.dart';
import 'package:book_echo/common/theme/text_styles_library.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  S get s => S.of(this);

  void pop([dynamic result]) {
    Navigator.of(this).pop(result);
  }

  Future pushNamed(Routes route, {dynamic args}) async {
    return Navigator.of(this).pushNamed(route.name, arguments: args);
  }

  void pushReplacementNamed(Routes route, {dynamic args}) {
    Navigator.of(this).pushReplacementNamed(route.name, arguments: args);
  }

  void popUntil(Routes route) {
    Navigator.of(this).popUntil((r) => r.settings.name == route.path);
  }

  NavigatorState get nav => Navigator.of(this);

  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorLibrary get colors => Theme.of(this).extension<ColorLibrary>()!;

  TextStylesLibrary get textStyles =>
      Theme.of(this).extension<TextStylesLibrary>()!;
}