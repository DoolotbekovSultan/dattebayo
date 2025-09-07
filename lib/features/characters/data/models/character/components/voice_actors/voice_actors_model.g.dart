// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceActorsModel _$VoiceActorsModelFromJson(Map<String, dynamic> json) =>
    VoiceActorsModel(
      japanese: listFromJson(json['japanese']),
      english: listFromJson(json['english']),
    );

Map<String, dynamic> _$VoiceActorsModelToJson(VoiceActorsModel instance) =>
    <String, dynamic>{
      'japanese': listToJson(instance.japanese),
      'english': listToJson(instance.english),
    };
