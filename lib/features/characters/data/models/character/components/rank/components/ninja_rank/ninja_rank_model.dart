import 'package:json_annotation/json_annotation.dart';

part 'ninja_rank_model.g.dart';

@JsonSerializable()
class NinjaRankModel {
  final String? partI;
  final String? gaiden;

  NinjaRankModel({this.partI, this.gaiden});

  factory NinjaRankModel.fromJson(Map<String, dynamic> json) =>
      _$NinjaRankModelFromJson(json);
  Map<String, dynamic> toJson() => _$NinjaRankModelToJson(this);
}
