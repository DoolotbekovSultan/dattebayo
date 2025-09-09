import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/section_card.dart';
import 'package:flutter/material.dart';

class CharacterFamilyTab extends StatelessWidget {
  final Character character;

  const CharacterFamilyTab({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final family = character.family;
    if (family == null) {
      return const Center(child: Text("No family information available"));
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (family.father != null || family.mother != null)
          SectionCard(
            title: "Parents",
            data: {"Father": family.father, "Mother": family.mother},
          ),
        if (family.son != null || family.daughter != null)
          SectionCard(
            title: "Children",
            data: {"Son": family.son, "Daughter": family.daughter},
          ),
        if (family.wife != null)
          SectionCard(title: "Spouse", data: {"Wife": family.wife}),
        if (family.adoptiveSon != null)
          SectionCard(
            title: "Adoptive Son",
            data: {"Adoptive Son": family.adoptiveSon},
          ),
        if (family.godfather != null)
          SectionCard(
            title: "Godfather",
            data: {"Godfather": family.godfather},
          ),
      ],
    );
  }
}
