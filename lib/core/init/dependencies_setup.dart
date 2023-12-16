import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDependencies() async {
  getIt.registerSingleton<Client>(Client());
}
