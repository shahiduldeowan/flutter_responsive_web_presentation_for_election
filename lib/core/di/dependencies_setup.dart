import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final GetIt getIt = GetIt.instance;

Future<void> dependenciesInjection() async {
  getIt.registerSingleton<Client>(Client());
}
