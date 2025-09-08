import 'package:dattebayo/features/basic/presentation/widgets/tabs/components/tab_helpers/selection_card.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/components/tailed_beast_personal.dart';
import 'package:flutter/material.dart';

class TailedBeastInfoTabPersonalSection extends StatelessWidget {
  final TailedBeastPersonal personal;
  const TailedBeastInfoTabPersonalSection({super.key, required this.personal});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: "Personal Info",
      data: {
        "Status: ": personal.status,
        if (personal.kekkeiGenkai != null)
          "KekkeiGenkai": personal.kekkeiGenkai!.join(", "),
        "Classification": personal.classification,
        if (personal.jinchuriki != null)
          "Jinchuriki": personal.jinchuriki!.join(", "),
        if (personal.titles != null) "Jinchuriki": personal.titles!.join(", "),
      },
    );
  }
}
