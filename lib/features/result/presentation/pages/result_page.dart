import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_circular_progress_widget.dart';
import '../../../../core/utils/app_error_widget.dart';
import '../blocs/result_bloc.dart';
import '../widgets/build_result_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ResultBloc, ResultState>(
        builder: (context, resultState) {
          return switch (resultState) {
            StateResultError() || StateResultEmpty() => appErrorWidget(),
            StateResultLoaded(results: var results) => BuildResultPage(resultList: results!),
            _ => appCircularProgressWidget(),
          };
        },
      ),
    );
  }
}
