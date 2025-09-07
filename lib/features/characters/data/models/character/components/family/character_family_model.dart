import 'package:json_annotation/json_annotation.dart';

part 'character_family_model.g.dart';

@JsonSerializable()
class CharacterFamilyModel {
  final String? father;
  final String? mother;
  final String? son;
  final String? daughter;
  final String? wife;
  final String? adoptiveSon;
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
