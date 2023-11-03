/*
 * "senior_client" created by @howyoujini on 2023/11/03  5:54 PM
 * Copyright (c) . All rights reserved.
 */
part of '../app.dart';

const _pathSplash = "/";

enum AppRoutes {
  SPLASH(_pathSplash);

  final String path;

  const AppRoutes(this.path);
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[],
);

class GoRoute {}
