import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ninja_rank_model.g.dart';

@HiveType(typeId: HiveTypeId.ninjaRankModel)
@JsonSerializable()
class NinjaRankModel extends HiveObject {
  @HiveField(0)
  final String? partI;
  @HiveField(1)
  final String? gaiden;

  NinjaRankModel({this.partI, this.gaiden});

  factory NinjaRankModel.fromJson(Map<String, dynamic> json) =>
      _$NinjaRankModelFromJson(json);
  Map<String, dynamic> toJson() => _$NinjaRankModelToJson(this);
}
