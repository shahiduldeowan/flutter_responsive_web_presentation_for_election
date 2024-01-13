import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../../../core/constants/api_urls.dart' show baseUrl, resultUrl;
import '../../../../core/constants/strings.dart' show projectKey;
import '../../../../core/log/logger.dart';
import '../../../../core/resources/data_state.dart';
import '../models/publish_result_model.dart';

part 'result_api_service.own.g.dart';

abstract class ResultApiService {
  factory ResultApiService(Client client) = _ResultApiService;

  Future<DataState<List<PublishResultModel>>> fetchResult();
}
