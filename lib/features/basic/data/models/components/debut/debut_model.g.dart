// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debut_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebutModel _$DebutModelFromJson(Map<String, dynamic> json) => DebutModel(
  manga: json['manga'] as String?,
  anime: json['anime'] as String?,
  novel: json['novel'] as String?,
  movie: json['movie'] as String?,
  game: json['game'] as String?,
  ova: json['ova'] as String?,
  appearsIn: json['appearsIn'] as String?,
);

Map<String, dynamic> _$DebutModelToJson(DebutModel instance) =>
    <String, dynamic>{
      'manga': instance.manga,
      'anime': instance.anime,
      'novel': instance.novel,
      'movie': instance.movie,
      'game': instance.game,
      'ova': instance.ova,
      'appearsIn': instance.appearsIn,
    };
