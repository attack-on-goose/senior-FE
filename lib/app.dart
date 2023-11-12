/*
 * "senior_client" created by @howyoujini on 2023/11/03  5:51 PM
 * Copyright (c) . All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_day_one_fill_client/color_schemes.dart';
import 'package:one_day_one_fill_client/home/v_home.dart';
import 'package:one_day_one_fill_client/quiz/v_quiz.dart';
import 'package:one_day_one_fill_client/splash/v_splash.dart';

part 'app_routes.dart';

class OneDayOneFillApp extends StatelessWidget {
  /// ko ver. 하루한알
  /// en ver. one-day-one-fill
  static const String appName = "하루한알";
  static const String appFontFamily = "Pretendard";

  const OneDayOneFillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      routerConfig: _router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: OneDayOneFillApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: OneDayOneFillApp.appFontFamily,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
