import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/result/presentation/pages/result_page.dart';

class MyRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: ResultPage.routeName,
        path: '/',
        builder: (_, state) => const ResultPage(),
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
