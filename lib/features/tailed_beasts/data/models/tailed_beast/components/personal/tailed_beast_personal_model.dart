import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dattebayo/features/basic/data/models/utils/functions.dart';

part 'tailed_beast_personal_model.g.dart';

@HiveType(typeId: HiveTypeId.tailedBeastPersonalModel)
@JsonSerializable()
class TailedBeastPersonalModel extends HiveObject {
  @HiveField(0)
  @JsonKey(fromJson: stringFromJson)
  final String? status;
  @HiveField(1)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? kekkeiGenkai;
  @HiveField(2)
  @JsonKey(fromJson: stringFromJson)
  final String? classification;
  @HiveField(3)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? jinchuriki;
  @HiveField(4)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? titles;

  TailedBeastPersonalModel({
    this.status,
    this.kekkeiGenkai,
    this.classification,
    this.jinchuriki,
    this.titles,
  });

  factory TailedBeastPersonalModel.fromJson(Map<String, dynamic> json) =>
      _$TailedBeastPersonalModelFromJson(json);

  Map<String, dynamic> toJson() => _$TailedBeastPersonalModelToJson(this);
}
/*
Json Example:
            "personal": {
                "status": "Incapacitated",
                "kekkeiGenkai": "Wood Release",
                "classification": "Tailed Beast",
                "jinchūriki": [
                    "Hagoromo Ōtsutsuki",
                    "Obito Uchiha",
                    "Madara Uchiha"
                ],
                "titles": [
                    "十尾Jūbi",
                    "one-eyedGod(天目一箇神,AmeNoHitotsuNoKami)",
                    "datara(ダタラ)",
                    "deidarabotchi(デイダラボッチ,Deidarabocchi)",
                    "nation-buildingGod(国造りの神,KunizukuriNoKami)"
                ]
            },
 */