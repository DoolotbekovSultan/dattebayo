import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/item_card/item_card.dart';
import 'package:flutter/material.dart';

class ItemsList<Entity> extends StatelessWidget {
  final List<Entity> entities;
  const ItemsList({super.key, required this.entities});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: Dimentions.searchHeight),
      itemCount: entities.length,
      itemBuilder: (context, index) {
        final entity = entities[index];
        return ItemCard<Entity>(entityGet: entity);
      },
      separatorBuilder: (context, index) => Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: Dimentions.paddingMedium,
        ),
        child: Divider(thickness: Dimentions.dividerHeight),
      ),
    );
  }
}
