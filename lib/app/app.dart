import 'package:flutter/material.dart';
import 'package:game_management/app/core/theme/app_theme.dart';
import 'package:game_management/features/auth/auth_gate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_management/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appDark,
      home: const AuthGate(),
    );
  }
}
