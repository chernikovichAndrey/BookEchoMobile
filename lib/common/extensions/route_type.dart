import 'package:book_echo/common/routing/route_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension RouteTypeExtension on RouteType {
  Route toPageRoute({
    required Widget page,
    required RouteSettings settings,
    bool enableDrag = true,
    bool animated = true,
  }) {
    switch (this) {
      case RouteType.cupertino:
        if (animated) {
          return CupertinoPageRoute(builder: (_) => page, settings: settings);
        } else {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => page,
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          );
        }
      case RouteType.dialog:
        return RawDialogRoute(
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              ) {
            return AnimatedBuilder(
              builder: (_, __) => page,
              animation: animation,
            );
          },
        );
      case RouteType.sheet:
        return ModalBottomSheetRoute(
          backgroundColor: Colors.transparent,
          enableDrag: enableDrag,
          settings: settings,
          constraints: const BoxConstraints.tightFor(width: double.infinity),
          builder: (BuildContext context) => page,
          isScrollControlled: true,
        );
    }
  }
}