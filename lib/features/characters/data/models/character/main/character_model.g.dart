// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(
  Map<String, dynamic> json,
) => CharacterModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  debut: json['debut'] == null
      ? null
      : DebutModel.fromJson(json['debut'] as Map<String, dynamic>),
  family: json['family'] == null
      ? null
      : CharacterFamilyModel.fromJson(json['family'] as Map<String, dynamic>),
  jutsu: (json['jutsu'] as List<dynamic>?)?.map((e) => e as String).toList(),
  natureType: (json['natureType'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  personal: json['personal'] == null
      ? null
      : CharacterPersonalModel.fromJson(
          json['personal'] as Map<String, dynamic>,
        ),
  rank: json['rank'] == null
      ? null
      : RankModel.fromJson(json['rank'] as Map<String, dynamic>),
  tools: (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
  voiceActors: json['voiceActors'] == null
      ? null
      : VoiceActorsModel.fromJson(json['voiceActors'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'debut': instance.debut?.toJson(),
      'family': instance.family?.toJson(),
      'jutsu': instance.jutsu,
      'natureType': instance.natureType,
      'personal': instance.personal?.toJson(),
      'rank': instance.rank?.toJson(),
      'tools': instance.tools,
      'voiceActors': instance.voiceActors?.toJson(),
    };
