import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/text_styles/constant_app_text_styles.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/items_list.dart';
import 'package:dattebayo/features/basic/presentation/widgets/entities/search_bar.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharactersScreen> {
  final CharactersBloc _bloc = serviceLocator<CharactersBloc>()
    ..add(GetCharactersEvent());

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
          Expanded(
            child: BlocBuilder<CharactersBloc, CharactersState>(
              builder: (context, state) {
                switch (state) {
                  case CharactersLoading():
                    return const Center(child: CircularProgressIndicator());
                  case GetCharactersSuccess(:final characters):
                    return ItemsList(entities: characters);
                  case CharactersError(:final message):
                    return Center(
                      child: Text(message, style: ConstantAppTextStyles.error),
                    );
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          ),

          Builder(
            builder: (context) {
              return Align(
                alignment: Alignment.topCenter,
                child: SearchBarWidget(
                  onSearch: (searchName) {
                    context.read<CharactersBloc>().add(
                      GetCharactersEvent(name: searchName),
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
