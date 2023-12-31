import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_strategy/url_strategy.dart';

import './app.dart';
import './core/di/dependencies_setup.dart';
import './core/log/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) {
    dependenciesInjection().then((value) {
      Logger.init();
      runApp(const App());
    });
  });
}

// flutter run -d chrome --web-renderer html
// flutter build web --web-renderer html --release