import 'package:dattebayo/features/characters/data/models/character/components/rank/components/ninja_rank/ninja_rank_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rank_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RankModel {
  final NinjaRankModel? ninjaRank;
  final String? ninjaRegistration;

  RankModel({this.ninjaRank, this.ninjaRegistration});

  factory RankModel.fromJson(Map<String, dynamic> json) =>
      _$RankModelFromJson(json);

  Map<String, dynamic> toJson() => _$RankModelToJson(this);
}
