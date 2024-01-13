part of 'result_api_service.dart';

class _ResultApiService implements ResultApiService {
  _ResultApiService(this._client);

  final Client _client;

  @override
  Future<DataState<List<PublishResultModel>>> fetchResult() async {
    try {
      final headers = {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json; charset=UTF-8',
      };
      final splitUrl = baseUrl.split('//');
      final queryParam = {'result': projectKey};
      final uri = Uri.http(splitUrl.last, resultUrl, queryParam);

      final response = await _client.get(uri, headers: headers).timeout(const Duration(seconds: 30));

      if (response.statusCode == HttpStatus.ok) {
        final jsonDecodeString = json.decode(utf8.decode(response.bodyBytes));
        final jsonToModel = List<PublishResultModel>.from(
          jsonDecodeString.map((value) => PublishResultModel.fromJson(value)),
        );

        if (jsonToModel.isNotEmpty) return DataSuccess(jsonToModel);
      }

      return DataEmpty();
    } catch (err, stk) {
      Logger.logger(name: '$runtimeType', error: err, stackTrace: stk);
      return DataFailed(error: err);
    }
  }
}
