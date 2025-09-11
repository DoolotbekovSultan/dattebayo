import 'package:dattebayo/features/basic/data/datasources/local/hive_type_id.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_family_model.g.dart';

@HiveType(typeId: HiveTypeId.characterFamilyModel)
@JsonSerializable()
class CharacterFamilyModel extends HiveObject {
  @HiveField(0)
  final String? father;
  @HiveField(1)
  final String? mother;
  @HiveField(2)
  final String? son;
  @HiveField(3)
  final String? daughter;
  @HiveField(4)
  final String? wife;
  @HiveField(5)
  final String? adoptiveSon;
  @HiveField(6)
  final String? godfather;

  CharacterFamilyModel({
    this.father,
    this.mother,
    this.son,
    this.daughter,
    this.wife,
    this.adoptiveSon,
    this.godfather,
  });

  factory CharacterFamilyModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterFamilyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterFamilyModelToJson(this);
}

/*
Json Example:
            "family": {
                "father": "Minato Namikaze",
                "mother": "Kushina Uzumaki",
                "son": "Boruto Uzumaki",
                "daughter": "Himawari Uzumaki",
                "wife": "Hinata Uzumaki",
                "adoptive son": "Kawaki",
                "godfather": "Jiraiya"
            },
*/
