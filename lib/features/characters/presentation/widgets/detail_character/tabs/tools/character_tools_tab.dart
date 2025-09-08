import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:flutter/material.dart';

class CharacterToolsTab extends StatelessWidget {
  final Character character;

  const CharacterToolsTab({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final toolsList = character.tools;

    if (toolsList == null || toolsList.isEmpty) {
      return const Center(child: Text("No Tools info available"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: toolsList.length,
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
              toolsList[index],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        );
      },
    );
  }
}
