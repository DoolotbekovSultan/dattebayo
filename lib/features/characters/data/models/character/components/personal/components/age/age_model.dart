import 'package:json_annotation/json_annotation.dart';

part 'age_model.g.dart';

@JsonSerializable()
class AgeModel {
  @JsonKey(name: "Part I")
  final String? part1;

  @JsonKey(name: "Part II")
  final String? part2;

  @JsonKey(name: "Academy Graduate")
  final String? academyGraduate;

  const AgeModel({this.part1, this.part2, this.academyGraduate});

  factory AgeModel.fromJson(Map<String, dynamic> json) =>
      _$AgeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AgeModelToJson(this);
}

/*
Json Example:
                "age": {
                    "Part I": "12–13",
                    "Part II": "15–17",
                    "Academy Graduate": "12"
                },
*/
