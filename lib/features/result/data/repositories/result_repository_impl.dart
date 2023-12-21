// import 'package:dartz/dartz.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_responsive_web_presentation_for_election/core/error/failures.dart';
// import 'package:flutter_responsive_web_presentation_for_election/core/error/exceptions.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/data/datasources/result_remote_data_source.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/data/responses/result_response.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/entities/result_entity.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/repositories/result_repository.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/usecases/fetch_result_usecase.dart';

// class ResultRepositoryImpl implements ResultRepository {
//   ResultRemoteDataSource resultRemoteDataSource;

//   ResultRepositoryImpl({@required this.resultRemoteDataSource});

//   @override
//   Future<Either<Failure, ResultEntity>> fetchResult({@required FetchResultParam params}) async {
//     try {
//       var _response = await resultRemoteDataSource.fetchResult(id: params.id);
//       return Right(_mapPDResponseToEntity(response: _response));
//     } on ServerException {
//       return Left(ServerFailure());
//     } catch (e) {
//       return Left(ServerFailure());
//     }
//   }

//   ResultEntity _mapPDResponseToEntity({@required ResultResponse response}) {
//     return ResultEntity(
//       id: response.id,
//       name: response.name,
//     );
//   }
// }
