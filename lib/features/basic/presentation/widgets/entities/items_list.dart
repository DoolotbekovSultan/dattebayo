import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/item_card/item_card.dart';
import 'package:flutter/material.dart';

class ItemsList<Entity> extends StatelessWidget {
  final List<Entity> entities;
  const ItemsList({super.key, required this.entities});

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      padding: EdgeInsets.only(top: Dimentions.searchHeight),
      itemCount: entities.length,
      itemBuilder: (context, index) {
        final entity = entities[index];
        return Column(
          key: ValueKey(entity),
          children: [
            ItemCard<Entity>(entityGet: entity),
            if (index < entities.length - 1)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimentions.paddingMedium,
                ),
                child: Divider(thickness: Dimentions.dividerHeight),
              ),
          ],
        );
      },
      onReorder: (oldIndex, newIndex) {
        final removedEntity = entities.removeAt(oldIndex);
        entities.insert(newIndex, removedEntity);
      },
    );
  }
}
