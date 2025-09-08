import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/widgets/items/tailed_beast_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TailedBeastsScreen extends StatefulWidget {
  const TailedBeastsScreen({super.key});

  @override
  State<TailedBeastsScreen> createState() => _TailedBeastsScreenState();
}

class _TailedBeastsScreenState extends State<TailedBeastsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          serviceLocator<TailedBeastsBloc>()..add(GetTailedBeastsEvent()),
      child: BlocBuilder<TailedBeastsBloc, TailedBeastsState>(
        builder: (context, state) {
          switch (state) {
            case TailedBeastsLoading():
              return Center(child: const CircularProgressIndicator());
            case GetTailedBeastsSuccess(:final tailedBeasts):
              return ListView.separated(
                itemCount: tailedBeasts.length,
                itemBuilder: (context, index) {
                  final tailedBeast = tailedBeasts[index];
                  return TailedBeastItemCard(tailedBeast: tailedBeast);
                },
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: Dimentions.paddingMedium,
                  ),
                  child: Divider(thickness: Dimentions.dividerHeight),
                ),
              );
            case TailedBeastsError(:final message):
              return Center(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
