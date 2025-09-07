import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:flutter/material.dart';

class CharacterItemCard extends StatelessWidget {
  final Character character;
  const CharacterItemCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = (character.images != null && character.images!.isNotEmpty)
        ? character.images!.first
        : '';
    return Padding(
      padding: EdgeInsets.all(8),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableWidth = constraints.maxWidth;
          final calculatedHeight = availableWidth * 1076 / 1440;
          return Card(
            elevation: 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    width: availableWidth,
                    height: calculatedHeight,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: calculatedHeight * 0.8,
                          ),
                        ),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        character.name ?? "Name error",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 24,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
