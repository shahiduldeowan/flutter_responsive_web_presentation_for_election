import '../../domain/entities/publish_result_entity.dart';

class PublishResultModel extends PublishResultEntity {
  const PublishResultModel({
    super.candidateSysKey,
    super.candidateOrgKey,
    super.groupKey,
    super.candidateSl,
    super.candidateName,
    super.candidateImage,
    super.group,
    super.isCountable,
    super.totalVote,
    super.projectKey,
    super.ballotIndex,
    super.totalBallot,
    super.remark,
  });

  factory PublishResultModel.fromJson(Map<String, dynamic> json) => PublishResultModel(
        candidateSysKey: json['candidateSysKey'],
        candidateOrgKey: json['candidateOrgKey'],
        groupKey: json['groupKey'],
        candidateSl: json['candidateSl'],
        candidateName: json['candidateName'],
        candidateImage: json['candidateImage'],
        group: json['group'],
        isCountable: json['isCountable'],
        totalVote: json['totalVote'],
        projectKey: json['projectKey'],
        ballotIndex: json['ballotIndex'],
        totalBallot: json['totalBallot'],
        remark: json['remark'],
      );
}
