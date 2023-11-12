// ignore_for_file: constant_identifier_names

/*
 * "senior_client" created by @howyoujini on 2023/11/03  5:54 PM
 * Copyright (c) . All rights reserved.
 */
part of '../app.dart';

const _pathSplash = "/";
const _pathLogin = "/login";
const _pathHome = "/home";
const _pathQuiz = "/quiz";

enum AppRoutes {
  SPLASH(_pathSplash),
  LOGIN(_pathLogin),
  HOME(_pathHome),
  QUIZ(_pathQuiz);

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
    GoRoute(
      path: AppRoutes.HOME.path,
      name: AppRoutes.HOME.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.QUIZ.path,
      name: AppRoutes.QUIZ.name,
      builder: (context, state) => const QuizScreen(),
    ),
  ],
);
