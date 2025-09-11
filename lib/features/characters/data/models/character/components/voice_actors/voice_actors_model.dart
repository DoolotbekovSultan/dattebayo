import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dattebayo/features/basic/data/models/utils/functions.dart';

part 'voice_actors_model.g.dart';

@HiveType(typeId: HiveTypeId.voiceActorsModel)
@JsonSerializable()
class VoiceActorsModel extends HiveObject {
  @HiveField(0)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? japanese;
  @HiveField(3)
  @JsonKey(fromJson: listFromJson, toJson: listToJson)
  final List<String>? english;

  VoiceActorsModel({this.japanese, this.english});
  factory VoiceActorsModel.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VoiceActorsModelToJson(this);
}
