import 'package:book_echo/common/localization/generated/l10n.dart';
import 'package:book_echo/common/routing/app_routing.dart';
import 'package:book_echo/common/theme/theme_data.dart';
import 'package:book_echo/core/common/repositories_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  final RepositoriesContainer repos;

  App({
    required this.repos,
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouting appRouting = AppRouting.create(repos: widget.repos);

  GlobalKey<NavigatorState> navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      locale: Locale(
        'en',
      ),
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: appRouting.handleInitialRoute,
      onGenerateRoute: appRouting.onGenerateRoute,
    );
  }
}
