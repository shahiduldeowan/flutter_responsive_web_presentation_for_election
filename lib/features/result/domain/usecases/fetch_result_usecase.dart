// import 'package:dartz/dartz.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_responsive_web_presentation_for_election/core/error/failures.dart';
// import 'package:flutter_responsive_web_presentation_for_election/core/usecases/usecase.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/entities/result_entity.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/repositories/result_repository.dart';

// class FetchResultUseCase extends UseCase<ResultEntity, FetchResultParam> {
//   final ResultRepository repository;

//   FetchResultUseCase(this.repository);

//   @override
//   Future<Either<Failure, ResultEntity>> call(FetchResultParam params) async {
//     return await repository.fetchResult(params: params);
//   }
// }

// class FetchResultParam {
//   String id;
//   FetchResultParam({@required this.id});
// }
