// ignore_for_file: constant_identifier_names

/*
 * "senior_client" created by @howyoujini on 2023/11/03  5:54 PM
 * Copyright (c) . All rights reserved.
 */
part of '../app.dart';

const _pathSplash = "/";
const _pathLogin = "/login";

enum AppRoutes {
  SPLASH(_pathSplash),
  LOGIN(_pathLogin);

  final String path;

  const AppRoutes(this.path);
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.SPLASH.path,
      name: AppRoutes.SPLASH.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.LOGIN.path,
      name: AppRoutes.LOGIN.name,
      builder: (context, state) => const SplashScreen(),
    ),
  ],
);
