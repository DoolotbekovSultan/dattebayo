import 'package:json_annotation/json_annotation.dart';
import 'package:dattebayo/features/basic/data/models/utils/functions.dart';

part 'tailed_beast_personal_model.g.dart';

@JsonSerializable()
class TailedBeastPersonalModel {
  @JsonKey(fromJson: stringFromJson)
  final String? status;
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? kekkeiGenkai;
  @JsonKey(fromJson: stringFromJson)
  final String? classification;
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? jinchuriki;
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