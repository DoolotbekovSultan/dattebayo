import 'package:dattebayo/features/basic/presentation/widgets/tabs/components/tab_helpers/selection_card.dart';
import 'package:dattebayo/features/characters/domain/entities/character/components/debut.dart';
import 'package:flutter/material.dart';

class DebutTabSectionCard extends StatelessWidget {
  final Debut debut;
  const DebutTabSectionCard({super.key, required this.debut});
  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Debut",
      data: {
        "Manga": debut.manga,
        "Anime": debut.anime,
        "Novel": debut.novel,
        "Movie": debut.movie,
        "OVA": debut.ova,
        "Appears in": debut.appearsIn,
      },
    );
  }
}
