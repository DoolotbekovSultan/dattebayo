import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/section_card.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/voice_actors.dart';
import 'package:flutter/widgets.dart';

class CharacterInfoTabVoiceActorsSection extends StatelessWidget {
  final VoiceActors voiceActors;
  const CharacterInfoTabVoiceActorsSection({
    super.key,
    required this.voiceActors,
  });
  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Voice Actors",
      data: {
        if (voiceActors.japanese != null)
          "Japanese": voiceActors.japanese!.join(", "),
        if (voiceActors.english != null)
          "English": voiceActors.english!.join(", "),
      },
    );
  }
}
