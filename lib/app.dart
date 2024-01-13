import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './config/theme/theme.dart';
import './core/constants/strings.dart' show electionResults;
import 'config/router/router.dart';
import 'core/di/dependencies_setup.dart';
import 'features/result/presentation/blocs/result_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ResultBloc>()..add(const EventFetchResult()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: electionResults,
        themeMode: ThemeMode.dark,
        darkTheme: darkTheme,
        routerConfig: MyRouter.router,
      ),
    );
  }
}
