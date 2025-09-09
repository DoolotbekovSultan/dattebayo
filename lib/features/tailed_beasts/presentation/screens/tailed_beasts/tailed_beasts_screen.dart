import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/text_styles/constant_app_text_styles.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/items_list.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/search_bar.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TailedBeastsScreen extends StatefulWidget {
  const TailedBeastsScreen({super.key});

  @override
  State<TailedBeastsScreen> createState() => _TailedBeastsScreenState();
}

class _TailedBeastsScreenState extends State<TailedBeastsScreen> {
  final TailedBeastsBloc _bloc = serviceLocator<TailedBeastsBloc>()
    ..add(GetTailedBeastsEvent());

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Stack(
        children: [
          BlocBuilder<TailedBeastsBloc, TailedBeastsState>(
            builder: (context, state) {
              switch (state) {
                case TailedBeastsLoading():
                  return const Center(child: CircularProgressIndicator());
                case GetTailedBeastsSuccess(:final tailedBeasts):
                  return ItemsList(entities: tailedBeasts);
                case TailedBeastsError(:final message):
                  return Center(
                    child: Text(message, style: ConstantAppTextStyles.error),
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
          Builder(
            builder: (context) {
              return Align(
                alignment: Alignment.topCenter,
                child: SearchBarWidget(
                  onSearch: (searchName) {
                    context.read<TailedBeastsBloc>().add(
                      GetTailedBeastsEvent(name: searchName),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
