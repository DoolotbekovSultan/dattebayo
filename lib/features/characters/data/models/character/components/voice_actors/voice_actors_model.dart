import 'package:json_annotation/json_annotation.dart';
import 'package:dattebayo/features/basic/data/models/utils/functions.dart';

part 'voice_actors_model.g.dart';

@JsonSerializable()
class VoiceActorsModel {
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? japanese;
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? english;

  VoiceActorsModel({this.japanese, this.english});
  factory VoiceActorsModel.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VoiceActorsModelToJson(this);
}
