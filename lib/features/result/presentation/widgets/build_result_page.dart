import 'package:flutter/material.dart';

import '../../domain/entities/publish_result_entity.dart';

class BuildResultPage extends StatelessWidget {
  const BuildResultPage({super.key, required this.resultList});

  final List<PublishResultEntity> resultList;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("data"),
    );
  }
}
