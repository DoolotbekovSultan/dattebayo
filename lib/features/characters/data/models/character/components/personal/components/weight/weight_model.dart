import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

@HiveType(typeId: HiveTypeId.weightModel)
@JsonSerializable()
class WeightModel extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "Part I")
  final String? part1;

  @HiveField(1)
  @JsonKey(name: "Part II")
  final String? part2;

  WeightModel({this.part1, this.part2});

  factory WeightModel.fromJson(Map<String, dynamic> json) =>
      _$WeightModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeightModelToJson(this);
}


/*
Json Example:
                "weight": {
                    "Part I": "40.1kg - 40.6kg",
                    "Part II": "50.9kg"
                },
*/