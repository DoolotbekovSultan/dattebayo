import 'package:dattebayo/features/basic/data/models/components/debut/debut_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/family/character_family_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/main/character_personal_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/main/rank_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/voice_actors/voice_actors_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CharacterModel {
  final int? id;
  final String? name;
  final List<String>? images;
  final DebutModel? debut;
  final CharacterFamilyModel? family;
  final List<String>? jutsu;
  final List<String>? natureType;
  final CharacterPersonalModel? personal;
  final RankModel? rank;
  final List<String>? tools;
  final VoiceActorsModel? voiceActors;

  CharacterModel({
    this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.rank,
    this.tools,
    this.voiceActors,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}

/*
Json Example:
    "characters": [
        {
            "id": 1344,
            "name": "Naruto Uzumaki",
            "images": [
                "https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png",
                "https://static.wikia.nocookie.net/naruto/images/7/7d/Naruto_Part_II.png"
            ],
            "debut": {
                "manga": "Naruto Chapter #1",
                "anime": "Naruto Episode #1",
                "novel": "Naruto: Innocent Heart, Demonic Blood",
                "movie": "Naruto the Movie: Ninja Clash in the Land of Snow",
                "game": "Naruto: Konoha Ninpōchō",
                "ova": "Find the Four-Leaf Red Clover!",
                "appearsIn": "Anime, Manga, Novel, Game, Movie"
            },
            "family": {
                "father": "Minato Namikaze",
                "mother": "Kushina Uzumaki",
                "son": "Boruto Uzumaki",
                "daughter": "Himawari Uzumaki",
                "wife": "Hinata Uzumaki",
                "adoptive son": "Kawaki",
                "godfather": "Jiraiya"
            },
            "jutsu": [
                "All Directions Shuriken",
                "Baryon Mode",
                "Big Ball Rasengan",
                "Big Ball Rasenshuriken",
                "Big Ball Spiralling Serial Zone Spheres",
                "Boil Release: Unrivalled Strength",
                "Chakra Transfer Technique",
                "Clone Body Blow",
                "Clone Flying Arrow",
                "Clone Spinning Heel Drop (Anime only)",
                "Combination Transformation",
                "Continuous Tailed Beast Balls",
                "Crescent Moon Rasengan",
                "Earth Release: Earth-Style Wall",
                "Erupting Propulsion Fist",
                "Fire Release: Toad Oil Flame Bullet (Anime only)",
                "Frog Kata",
                "Frog Strike",
                "Gelel Rasengan",
                "Gentle Step Spiralling Twin Lion Fists",
                "Guts Rasengan",
                "Harem Technique",
                "Hurricane Thunderclap — Majestic Attire Sword Stroke",
                "Ink Creation",
                "Kurama Arm Attack",
                "Mini-Rasenshuriken",
                "Multiple Shadow Clone Technique",
                "Naruto Region Combo",
                "Naruto Uzumaki Combo",
                "Naruto Uzumaki Two Thousand Combo",
                "Naruto and Shion's Super Chakra Rasengan",
                "Negative Emotions Sensing",
                "New Sexy Technique",
                "Nine-Tails Chakra Mode",
                "Ninja Art: Bare-Handed Blade Block",
                "One Thousand Years of Death",
                "Pachinko Technique (Anime only)",
                "Parachute",
                "Parent and Child Rasengan",
                "Planetary Rasengan",
                "Rasengan",
                "Rasengan: Flash",
                "Regeneration Ability",
                "Runt Ball Rasengan (Anime only)",
                "Sage Art: Lava Release Rasenshuriken",
                "Sage Art: Magnet Release Rasengan",
                "Sage Art: Many Ultra-Big Ball Spiralling Serial Spheres",
                "Sage Art: Super Tailed Beast Rasenshuriken",
                "Sage Mode",
                "Scorch Release: Halo Hurricane Jet Black Arrow Style Zero",
                "Seven-Coloured Rasengan",
                "Sexy Reverse Harem Technique",
                "Sexy Technique",
                "Sexy Technique: Pole Dance and Nice Body (Anime only)",
                "Shadow Clone Technique",
                "Shadow Shuriken Technique",
                "Shuriken Shadow Clone Technique (Anime only)",
                "Six Paths Sage Mode",
                "Six Paths Senjutsu",
                "Six Paths Yang Power",
                "Six Paths — Chibaku Tensei",
                "Six Paths: Ultra-Big Ball Rasenshuriken",
                "Soap Bubble Ninjutsu (Anime only)",
                "Spiralling Absorption Sphere",
                "Spiralling Serial Spheres",
                "Spiralling Strife Spheres",
                "Strong Fist (Anime only)",
                "Summoning Technique (Toad)",
                "Summoning: Food Cart Destroyer Technique",
                "Super Mini-Tailed Beast Ball",
                "Super-Ultra-Big Ball Rasengan",
                "Supreme Ultimate Rasengan",
                "Tailed Beast Ball",
                "Tailed Beast Ball Rasenshuriken",
                "Tailed Beast Chakra Arms",
                "Tailed Beast Full Charge",
                "Tailed Beast Rasengan",
                "Tailed Beast Shockwave",
                "Torii Seal",
                "Tornado Rasengan",
                "Truth-Seeking Ball",
                "Turning into a Frog Technique (Anime only)",
                "Typhoon Water Vortex Technique",
                "Ultra-Big Ball Rasengan",
                "Ultra-Many Spiralling Serial Spheres",
                "Uzumaki Formation (Anime only)",
                "Wind Release: Rasengan",
                "Wind Release: Rasenshuriken",
                "Wind Release: Repeated Rasenshuriken",
                "Wind Release: Toad Gun (Anime only)",
                "Wind Release: Toad Oil Bullet (Anime only)",
                "Wind Release: Toad Oil Flame Bullet (Anime only)",
                "Wind Release: Ultra-Big Ball Rasenshuriken",
                "Wisdom Wolf Decay"
            ],
            "natureType": [
                "Wind Release  (Affinity)",
                "Lightning Release",
                "Earth Release",
                "Water Release",
                "Fire Release",
                "Lava Release",
                "Magnet Release",
                "Boil Release",
                "Yin Release",
                "Yang Release",
                "Yin–Yang Release"
            ],
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
            "rank": {
                "ninjaRank": {
                    "Part I": "Genin",
                    "Gaiden": "Kage"
                },
                "ninjaRegistration": "012607"
            },
            "tools": [
                "Absorbing Hand",
                "Bō (Anime only)",
                "Chakra Blade (Anime only)",
                "Flying Thunder God Kunai",
                "Fūma Shuriken",
                "Hidden Kunai Mechanism",
                "Konoha Chakra Blade",
                "Sand",
                "Stone of Gelel"
            ],
            "voiceActors": {
                "japanese": [
                    "Junko Takeuchi",
                    "Ema Kogure   (Sexy Technique)"
                ],
                "english": [
                    "Maile Flanagan",
                    "Stephanie Sheh   (Sexy Technique)",
                    "Jeannie Elias   (Sexy Technique) (episode 53-55)",
                    "Mary Elizabeth McGlynn   (Sexy Technique) (episode 177)",
                    "Kate Higgins   (Sexy Technique) (episode 229)"
                ]
            }
        },
        */
