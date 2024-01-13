import 'publish_result_color_entity.dart';
import 'publish_result_group_entity.dart';
import 'publish_result_remark_entity.dart';
import 'result_entity.dart';

class PublishResultEntity extends ResultEntity with PublishResultGroupEntity, PublishResultRemarkEntity, PublishResultColorEntity {
  const PublishResultEntity({
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

  @override
  PublishResultEntity copyWith({
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
  }) {
    return PublishResultEntity(
      candidateSysKey: candidateSysKey ?? this.candidateSysKey,
      candidateOrgKey: candidateOrgKey ?? this.candidateOrgKey,
      groupKey: groupKey ?? this.groupKey,
      candidateSl: candidateSl ?? this.candidateSl,
      candidateName: candidateName ?? this.candidateName,
      candidateImage: candidateImage ?? this.candidateImage,
      group: group ?? this.group,
      isCountable: isCountable ?? this.isCountable,
      totalVote: totalVote ?? this.totalVote,
      projectKey: projectKey ?? this.projectKey,
      ballotIndex: ballotIndex ?? this.ballotIndex,
      totalBallot: totalBallot ?? this.totalBallot,
      remark: remark ?? this.remark,
    );
  }
}
