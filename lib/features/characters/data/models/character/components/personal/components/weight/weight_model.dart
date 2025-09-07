import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

@JsonSerializable()
class WeightModel {
  @JsonKey(name: "Part I")
  final String? part1;

  @JsonKey(name: "Part II")
  final String? part2;

  const WeightModel({this.part1, this.part2});

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