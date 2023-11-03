/*
 * "senior_client" created by @howyoujini on 2023/11/03  5:51 PM
 * Copyright (c) . All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:senior_client/color_schemes.dart';

part 'app_routes.dart';

class SeniorApp extends StatelessWidget {
  static const String appName = "진격의 오리(앱이름가제)";
  static const String appFontFamily = "NotoSansKR";

  const SeniorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      routerConfig: _router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: SeniorApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: SeniorApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
