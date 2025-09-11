import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'debut_model.g.dart';

@HiveType(typeId: HiveTypeId.debut)
@JsonSerializable()
class DebutModel {
  @HiveField(0)
  final String? manga;
  @HiveField(1)
  final String? anime;
  @HiveField(2)
  final String? novel;
  @HiveField(3)
  final String? movie;
  @HiveField(4)
  final String? game;
  @HiveField(5)
  final String? ova;
  @HiveField(6)
  final String? appearsIn;

  DebutModel({
    this.manga,
    this.anime,
    this.novel,
    this.movie,
    this.game,
    this.ova,
    this.appearsIn,
  });

  factory DebutModel.fromJson(Map<String, dynamic> json) =>
      _$DebutModelFromJson(json);

  Map<String, dynamic> toJson() => _$DebutModelToJson(this);
}

/*

Json Example:

            "debut": {
                "manga": "Naruto Chapter #1",
                "anime": "Naruto Episode #1",
                "novel": "Naruto: Innocent Heart, Demonic Blood",
                "movie": "Naruto the Movie: Ninja Clash in the Land of Snow",
                "game": "Naruto: Konoha Ninpōchō",
                "ova": "Find the Four-Leaf Red Clover!",
                "appearsIn": "Anime, Manga, Novel, Game, Movie"
            },
*/
