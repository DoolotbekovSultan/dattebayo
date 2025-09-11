import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/components/ninja_rank/ninja_rank_model.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rank_model.g.dart';

@HiveType(typeId: HiveTypeId.rankModel)
@JsonSerializable(explicitToJson: true)
class RankModel extends HiveObject {
  @HiveField(0)
  final NinjaRankModel? ninjaRank;
  @HiveField(1)
  final String? ninjaRegistration;

  RankModel({this.ninjaRank, this.ninjaRegistration});

  factory RankModel.fromJson(Map<String, dynamic> json) =>
      _$RankModelFromJson(json);

  Map<String, dynamic> toJson() => _$RankModelToJson(this);
}
