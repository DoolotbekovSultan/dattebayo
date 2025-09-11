import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'height_model.g.dart';

@HiveType(typeId: HiveTypeId.heightModel)
@JsonSerializable()
class HeightModel extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "Part I")
  final String? part1;

  @HiveField(1)
  @JsonKey(name: "Part II")
  final String? part2;

  @HiveField(2)
  @JsonKey(name: "Blank Period")
  final String? blankPeriod;

  HeightModel({this.part1, this.part2, this.blankPeriod});

  factory HeightModel.fromJson(Map<String, dynamic> json) =>
      _$HeightModelFromJson(json);

  Map<String, dynamic> toJson() => _$HeightModelToJson(this);
}


/*
Json Example:
                "height": {
                    "Part I": "145.3cm - 147.5cm",
                    "Part II": "166cm",
                    "Blank Period": "180cm"
                },
                */