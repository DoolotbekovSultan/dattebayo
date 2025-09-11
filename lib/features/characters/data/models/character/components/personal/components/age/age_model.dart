import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'age_model.g.dart';

@HiveType(typeId: HiveTypeId.ageModel)
@JsonSerializable()
class AgeModel extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "Part I")
  final String? part1;

  @HiveField(1)
  @JsonKey(name: "Part II")
  final String? part2;

  @HiveField(2)
  @JsonKey(name: "Academy Graduate")
  final String? academyGraduate;

  AgeModel({this.part1, this.part2, this.academyGraduate});

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
