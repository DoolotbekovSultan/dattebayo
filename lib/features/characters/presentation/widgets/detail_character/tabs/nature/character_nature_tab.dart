import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:flutter/material.dart';

class CharacterNatureTab extends StatelessWidget {
  final Character character;

  const CharacterNatureTab({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final natureList = character.natureType;

    if (natureList == null || natureList.isEmpty) {
      return const Center(child: Text("No Nature info available"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: natureList.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              natureList[index],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
