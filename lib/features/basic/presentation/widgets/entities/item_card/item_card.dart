import 'dart:ui';
import 'package:dattebayo/core/theme/text_styles/constant_app_text_styles.dart';
import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/presentation/screens/detail_character/detail_character_screen.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/screens/detail_tailed_beast/detail_tailed_beast_screen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemCard<Entity> extends StatelessWidget {
  final Entity entityGet;
  const ItemCard({super.key, required this.entityGet});

  @override
  Widget build(BuildContext context) {
    late dynamic entity;

    if (entityGet is Character) {
      entity = entityGet as Character;
    } else if (entityGet is TailedBeast) {
      entity = entityGet as TailedBeast;
    }
    final imageUrl = (entity.images != null && entity.images!.isNotEmpty)
        ? entity.images!.first
        : '';
    return GestureDetector(
      onTap: () {
        final route = (entityGet is Character)
            ? MaterialPageRoute(
                builder: (context) => DetailCharacterScreen(id: entity.id),
              )
            : MaterialPageRoute(
                builder: (context) => DetailTailedBeastScreen(id: entity.id),
              );
        Navigator.push(context, route);
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
                      child: Image(
                        image: CachedNetworkImageProvider(imageUrl),
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
                            entity.name ?? "Name error",
                            style: ConstantAppTextStyles.nameTitle,
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
