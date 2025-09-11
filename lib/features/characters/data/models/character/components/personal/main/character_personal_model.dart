import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/age/age_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/height/height_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/weight/weight_model.dart';
import 'package:dattebayo/features/basic/data/models/utils/functions.dart';
import 'package:hive/hive.dart';

import 'package:json_annotation/json_annotation.dart';

part 'character_personal_model.g.dart';

@HiveType(typeId: HiveTypeId.characterPersonalModel)
@JsonSerializable(explicitToJson: true)
class CharacterPersonalModel extends HiveObject {
  @HiveField(0)
  @JsonKey(fromJson: stringFromJson)
  final String? birthdate;
  @HiveField(1)
  @JsonKey(fromJson: stringFromJson)
  final String? sex;
  @HiveField(2)
  final AgeModel? age;
  @HiveField(3)
  final HeightModel? height;
  @HiveField(4)
  final WeightModel? weight;
  @HiveField(5)
  @JsonKey(fromJson: stringFromJson)
  final String? bloodType;
  @HiveField(6)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? kekkeiGenkai;
  @HiveField(7)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? classification;
  @HiveField(8)
  @JsonKey(fromJson: stringFromJson)
  final String? tailedBeast;
  @HiveField(9)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? occupation;
  @HiveField(10)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? affiliation;
  @HiveField(11)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? team;
  @HiveField(12)
  @JsonKey(fromJson: stringFromJson)
  final String? clan;
  @HiveField(13)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? titles;

  CharacterPersonalModel({
    this.birthdate,
    this.sex,
    this.age,
    this.height,
    this.weight,
    this.bloodType,
    this.kekkeiGenkai,
    this.classification,
    this.tailedBeast,
    this.occupation,
    this.affiliation,
    this.team,
    this.clan,
    this.titles,
  });

  factory CharacterPersonalModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterPersonalModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterPersonalModelToJson(this);
}

/*
Json Example:
            "personal": {
                "birthdate": "October 10",
                "sex": "Male",
                "age": {
                    "Part I": "12–13",
                    "Part II": "15–17",
                    "Academy Graduate": "12"
                },
                "height": {
                    "Part I": "145.3cm - 147.5cm",
                    "Part II": "166cm",
                    "Blank Period": "180cm"
                },
                "weight": {
                    "Part I": "40.1kg - 40.6kg",
                    "Part II": "50.9kg"
                },
                "bloodType": "B",
                "kekkeiGenkai": [
                    "Lava Release",
                    "Magnet Release",
                    "Boil Release"
                ],
                "classification": [
                    "Jinchūriki",
                    "Sage",
                    "Sensor Type"
                ],
                "tailedBeast": "Shukaku, Matatabi, Isobu, Son Gokū, Kokuō, Saiken, Chōmei, Gyūki, Kurama (Forms)",
                "occupation": [
                    "Hokage",
                    "Chūnin Exams Proctor  (Anime only)"
                ],
                "affiliation": [
                    "Konohagakure",
                    "Mount Myōboku",
                    "Allied Shinobi Forces"
                ],
                "team": [
                    "Team Kakashi",
                    "Sasuke Recovery Team",
                    "Konoha 11  (Anime only)",
                    "Bikōchū Search Team  (Anime only)",
                    "Kaima Capture Team  (Anime only)",
                    "Star Guard Team  (Anime only)",
                    "Peddlers Escort Team  (Anime only)",
                    "Kazekage Rescue Team",
                    "Team One  (Anime only)",
                    "Eight Man Squad",
                    "Hanabi Rescue Team  (Movie only)"
                ],
                "clan": "Uzumaki",
                "titles": [
                    "うずまきナルトUzumakiNaruto",
                    "the-off,NumberOneUnpredictable,NoisyNinja(目立ちたがり屋で意外性no.1のドタバタ忍者,MedachitagariyaDeIgaiseiNanbāWanNoDotabataNinja,EnglishTv:NumberOneHyperactive,KnuckleheadNinja)",
                    "childOfTheProphecy(予言の子,YogenNoKo)",
                    "saviourOfThisWorld(この世の救世主,KonoYoNoKyūseishu)",
                    "heroOfTheHiddenLeaf(木ノ葉隠れの英雄,KonohagakureNoEiyū,LiterallyMeaning:HeroOfTheHiddenTreeLeaves)",
                    "boyOfMiracles(奇跡を起こす少年,KisekiOOkosuShōnen)",
                    "konoha'sOrangeHokage(木ノ葉のオレンジ火影,KonohaNoOrenjiHokage,LiterallyMeaning:TreeLeaves'OrangeFireShadow)",
                    "seventhHokage(七代目火影,NanadaimeHokage,LiterallyMeaning:SeventhFireShadow)",
                    "fox(狐,Kitsune)"
                ]
            },
*/
