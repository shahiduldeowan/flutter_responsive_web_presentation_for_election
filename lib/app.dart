import 'package:flutter/material.dart';

import './config/theme/theme.dart';
import './core/constants/strings.dart' show electionResults;
import 'config/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: electionResults,
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      routerConfig: MyRouter.router,
    );
  }
}
