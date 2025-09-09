import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/section_card.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/personal/character_personal.dart';
import 'package:flutter/material.dart';

class CharacterInfoTabPersonalSection extends StatelessWidget {
  final CharacterPersonal personal;
  const CharacterInfoTabPersonalSection({super.key, required this.personal});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Personal Info",
      data: {
        "Birthdate": personal.birthdate,
        "Sex": personal.sex,
        if (personal.height != null)
          "Height":
              "Part I: ${personal.height!.part1}, Part II: ${personal.height!.part2}",
        if (personal.weight != null)
          "Weight":
              "Part I: ${personal.weight!.part1}, Part II: ${personal.weight!.part2}",
        "Blood Type": personal.bloodType,
        if (personal.kekkeiGenkai != null)
          "Kekkei Genkai": personal.kekkeiGenkai!.join(", "),
        if (personal.classification != null)
          "Classification": personal.classification!.join(", "),
        "Tailed Beast": personal.tailedBeast,
        if (personal.occupation != null)
          "Occupation": personal.occupation!.join(", "),
        if (personal.affiliation != null)
          "Affiliation": personal.affiliation!.join(", "),
        if (personal.team != null) "Team": personal.team!.join(", "),
        "Clan": personal.clan,
        if (personal.titles != null) "Titles": personal.titles!.join(", "),
      },
    );
  }
}
