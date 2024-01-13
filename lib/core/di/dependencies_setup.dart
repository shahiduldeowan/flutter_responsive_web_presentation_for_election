import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../../features/result/di/result_injectort.dart' show resultInjection;

final GetIt getIt = GetIt.instance;

Future<void> dependenciesInjection() async {
  getIt.registerSingleton<Client>(Client());
  resultInjection();
}
