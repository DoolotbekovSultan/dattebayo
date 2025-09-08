import 'package:dattebayo/features/basic/presentation/widgets/tabs/components/sections/debut_tab_section_card.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/info/sections/character_info_tab_personal_section.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/info/sections/character_info_tab_rank_section.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/info/sections/character_info_tab_voice_actors_section.dart';
import 'package:flutter/material.dart';

class CharacterInfoTab extends StatelessWidget {
  final Character character;

  const CharacterInfoTab({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (character.debut != null)
          DebutTabSectionCard(debut: character.debut!),
        if (character.personal != null)
          CharacterInfoTabPersonalSection(personal: character.personal!),
        if (character.rank != null)
          CharacterInfoTabRankSection(rank: character.rank!),
        if (character.voiceActors != null)
          CharacterInfoTabVoiceActorsSection(
            voiceActors: character.voiceActors!,
          ),
      ],
    );
  }
}
