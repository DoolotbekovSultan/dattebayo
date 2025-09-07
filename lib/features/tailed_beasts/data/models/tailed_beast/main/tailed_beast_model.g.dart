// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tailed_beast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TailedBeastModel _$TailedBeastModelFromJson(
  Map<String, dynamic> json,
) => TailedBeastModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  debut: json['debut'] == null
      ? null
      : DebutModel.fromJson(json['debut'] as Map<String, dynamic>),
  family: json['family'] == null
      ? null
      : TailedBeastsFamilyModel.fromJson(
          json['family'] as Map<String, dynamic>,
        ),
  jutsu: (json['jutsu'] as List<dynamic>?)?.map((e) => e as String).toList(),
  natureType: (json['natureType'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  personal: json['personal'] == null
      ? null
      : TailedBeastPersonalModel.fromJson(
          json['personal'] as Map<String, dynamic>,
        ),
  uniqueTraits: (json['uniqueTraits'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$TailedBeastModelToJson(TailedBeastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'debut': instance.debut?.toJson(),
      'family': instance.family?.toJson(),
      'jutsu': instance.jutsu,
      'natureType': instance.natureType,
      'personal': instance.personal?.toJson(),
      'uniqueTraits': instance.uniqueTraits,
    };
