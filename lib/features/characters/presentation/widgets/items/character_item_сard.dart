import 'dart:ui';

import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/presentation/screens/detail_character_screen.dart';
import 'package:flutter/material.dart';

class CharacterItemCard extends StatelessWidget {
  final Character character;
  const CharacterItemCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = (character.images != null && character.images!.isNotEmpty)
        ? character.images!.first
        : '';
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCharacterScreen(id: character.id),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(Dimentions.paddingSmall),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final availableWidth = constraints.maxWidth;
            final calculatedHeight = availableWidth * 1076 / 1440;
            return Card(
              elevation: 4,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      Dimentions.borderRadiusMedium,
                    ),
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
                        bottomLeft: Radius.circular(
                          Dimentions.borderRadiusMedium,
                        ),
                        bottomRight: Radius.circular(
                          Dimentions.borderRadiusMedium,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: EdgeInsets.all(Dimentions.paddingSmall),
                          color:
                              (Theme.of(context).brightness == Brightness.light
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(0.3),
                          child: Text(
                            character.name ?? "Name error",
                            style: Theme.of(context).textTheme.displaySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
