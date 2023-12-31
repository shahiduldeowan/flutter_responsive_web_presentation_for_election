import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/result/presentation/pages/result_page.dart';

class Router {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: ResultPage.routeName,
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: ResultPage()),
      ),
    ],
    redirect: (context, state) async => null,
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text('Error 404!'),
        ),
      ),
    ),
  );
}
