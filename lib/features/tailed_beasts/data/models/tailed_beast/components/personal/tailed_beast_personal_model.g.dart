// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tailed_beast_personal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TailedBeastPersonalModel _$TailedBeastPersonalModelFromJson(
  Map<String, dynamic> json,
) => TailedBeastPersonalModel(
  status: stringFromJson(json['status']),
  kekkeiGenkai: listFromJson(json['kekkeiGenkai']),
  classification: stringFromJson(json['classification']),
  jinchuriki: listFromJson(json['jinchuriki']),
  titles: listFromJson(json['titles']),
);

Map<String, dynamic> _$TailedBeastPersonalModelToJson(
  TailedBeastPersonalModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'kekkeiGenkai': listToJson(instance.kekkeiGenkai),
  'classification': instance.classification,
  'jinchuriki': listToJson(instance.jinchuriki),
  'titles': listToJson(instance.titles),
};
