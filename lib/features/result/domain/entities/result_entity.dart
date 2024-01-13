import 'package:equatable/equatable.dart';

abstract class ResultEntity extends Equatable {
  final int? candidateSysKey;
  final String? candidateOrgKey;
  final int? groupKey;
  final String? candidateSl;
  final String? candidateName;
  final String? candidateImage;
  final String? group;
  final bool? isCountable;
  final int? totalVote;
  final int? projectKey;
  final int? ballotIndex;
  final int? totalBallot;
  final String? remark;

  const ResultEntity({
    this.candidateSysKey,
    this.candidateOrgKey,
    this.groupKey,
    this.candidateSl,
    this.candidateName,
    this.candidateImage,
    this.group,
    this.isCountable,
    this.totalVote,
    this.projectKey,
    this.ballotIndex,
    this.totalBallot,
    this.remark,
  });

  ResultEntity copyWith({
    int? candidateSysKey,
    String? candidateOrgKey,
    int? groupKey,
    String? candidateSl,
    String? candidateName,
    String? candidateImage,
    String? group,
    bool? isCountable,
    int? totalVote,
    int? projectKey,
    int? ballotIndex,
    int? totalBallot,
    String? remark,
  });

  @override
  List<Object?> get props {
    return [
      candidateSysKey,
      candidateOrgKey,
      groupKey,
      candidateSl,
      candidateName,
      candidateImage,
      group,
      isCountable,
      totalVote,
      projectKey,
      ballotIndex,
      totalBallot,
      remark,
    ];
  }
}
