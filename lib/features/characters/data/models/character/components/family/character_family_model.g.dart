// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterFamilyModel _$CharacterFamilyModelFromJson(
  Map<String, dynamic> json,
) => CharacterFamilyModel(
  father: json['father'] as String?,
  mother: json['mother'] as String?,
  son: json['son'] as String?,
  daughter: json['daughter'] as String?,
  wife: json['wife'] as String?,
  adoptiveSon: json['adoptiveSon'] as String?,
  godfather: json['godfather'] as String?,
);

Map<String, dynamic> _$CharacterFamilyModelToJson(
  CharacterFamilyModel instance,
) => <String, dynamic>{
  'father': instance.father,
  'mother': instance.mother,
  'son': instance.son,
  'daughter': instance.daughter,
  'wife': instance.wife,
  'adoptiveSon': instance.adoptiveSon,
  'godfather': instance.godfather,
};
