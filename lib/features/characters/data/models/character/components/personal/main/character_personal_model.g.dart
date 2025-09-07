// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_personal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterPersonalModel _$CharacterPersonalModelFromJson(
  Map<String, dynamic> json,
) => CharacterPersonalModel(
  birthdate: stringFromJson(json['birthdate']),
  sex: stringFromJson(json['sex']),
  age: json['age'] == null
      ? null
      : AgeModel.fromJson(json['age'] as Map<String, dynamic>),
  height: json['height'] == null
      ? null
      : HeightModel.fromJson(json['height'] as Map<String, dynamic>),
  weight: json['weight'] == null
      ? null
      : WeightModel.fromJson(json['weight'] as Map<String, dynamic>),
  bloodType: stringFromJson(json['bloodType']),
  kekkeiGenkai: listFromJson(json['kekkeiGenkai']),
  classification: listFromJson(json['classification']),
  tailedBeast: stringFromJson(json['tailedBeast']),
  occupation: listFromJson(json['occupation']),
  affiliation: listFromJson(json['affiliation']),
  team: listFromJson(json['team']),
  clan: stringFromJson(json['clan']),
  titles: listFromJson(json['titles']),
);

Map<String, dynamic> _$CharacterPersonalModelToJson(
  CharacterPersonalModel instance,
) => <String, dynamic>{
  'birthdate': instance.birthdate,
  'sex': instance.sex,
  'age': instance.age?.toJson(),
  'height': instance.height?.toJson(),
  'weight': instance.weight?.toJson(),
  'bloodType': instance.bloodType,
  'kekkeiGenkai': listToJson(instance.kekkeiGenkai),
  'classification': listToJson(instance.classification),
  'tailedBeast': instance.tailedBeast,
  'occupation': listToJson(instance.occupation),
  'affiliation': listToJson(instance.affiliation),
  'team': listToJson(instance.team),
  'clan': instance.clan,
  'titles': listToJson(instance.titles),
};
