import 'package:json_annotation/json_annotation.dart';

part 'debut_model.g.dart';

@JsonSerializable()
class DebutModel {
  final String? manga;
  final String? anime;
  final String? novel;
  final String? movie;
  final String? game;
  final String? ova;
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
