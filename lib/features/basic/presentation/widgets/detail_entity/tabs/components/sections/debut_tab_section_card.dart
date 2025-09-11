import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/components/tab_helpers/section_card.dart';
import 'package:dattebayo/features/basic/domain/entities/components/debut.dart';
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
