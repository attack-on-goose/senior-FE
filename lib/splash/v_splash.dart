/*
 * "senior_client" created by @howyoujini on 2023/11/10  1:39 AM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:one_day_one_fill_client/app.dart';
import 'package:one_day_one_fill_client/color_schemes.dart';
import 'package:one_day_one_fill_client/splash/vm_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashViewModel _vm = SplashViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final AppRoutes page = await _vm.whereToGo();
      if (mounted) {
        context.goNamed(page.name);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.color.primary,
        body: Center(
          child: SvgPicture.asset(
            'assets/images/onedayonefill_logo.svg',
            width: 80,
          ),
        ));
  }
}
