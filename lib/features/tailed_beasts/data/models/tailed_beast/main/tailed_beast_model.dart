import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:dattebayo/features/basic/data/models/components/debut/debut_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/family/tailed_beasts_family_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/personal/tailed_beast_personal_model.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tailed_beast_model.g.dart';

@HiveType(typeId: HiveTypeId.tailedBeastModel)
@JsonSerializable(explicitToJson: true)
class TailedBeastModel extends HiveObject {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final List<String>? images;
  @HiveField(3)
  final DebutModel? debut;
  @HiveField(4)
  final TailedBeastsFamilyModel? family;
  @HiveField(5)
  final List<String>? jutsu;
  @HiveField(6)
  final List<String>? natureType;
  @HiveField(7)
  final TailedBeastPersonalModel? personal;
  @HiveField(8)
  final List<String>? uniqueTraits;

  TailedBeastModel({
    this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.uniqueTraits,
  });

  factory TailedBeastModel.fromJson(Map<String, dynamic> json) =>
      _$TailedBeastModelFromJson(json);

  Map<String, dynamic> toJson() => _$TailedBeastModelToJson(this);
}

/*
Json Example:
{
            "id": 1,
            "name": "Ten-Tails",
            "images": [
                "https://static.wikia.nocookie.net/naruto/images/e/e6/Ten-Tails_emerges.png"
            ],
            "debut": {
                "manga": "Naruto Chapter #467",
                "anime": "Naruto Shippūden Episode #205",
                "novel": "The Last: Naruto the Movie",
                "movie": "The Last: Naruto the Movie",
                "game": "Naruto Shippūden: Ultimate Ninja Storm Revolution",
                "ova": "The Far Reaches of Hope",
                "appearsIn": "Anime, Manga, Novel, Game, Movie"
            },
            "family": {
                "incarnation with the god tree": "Kaguya Ōtsutsuki",
                "depowered form": "Demonic Statue of the Outer Path"
            },
            "jutsu": [
                "Six Paths Senjutsu",
                "Tailed Beast Ball",
                "Tailed Beast Chakra Arms",
                "Tailed Beast Shockwave",
                "Ten-Tails Fission",
                "Tenpenchii",
                "Truth-Seeking Ball",
                "Wood Release: Cutting Technique"
            ],
            "natureType": [
                "Fire Release",
                "Wind Release",
                "Lightning Release",
                "Earth Release",
                "Water Release",
                "Wood Release",
                "Yin Release",
                "Yang Release",
                "Yin–Yang Release"
            ],
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
            "uniqueTraits": [
                "Can absorb chakra"
            ]
        },
*/
