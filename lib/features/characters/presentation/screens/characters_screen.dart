import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:dattebayo/features/characters/presentation/widgets/character_item_%D1%81ard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharactersScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          serviceLocator<CharactersBloc>()..add(GetCharactersEvent()),
      child: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          switch (state) {
            case CharactersLoading():
              return Center(child: const CircularProgressIndicator());
            case GetCharactersSuccess(:final characters):
              return ListView.builder(
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return CharacterItemCard(character: character);
                },
              );
            case CharactersError(:final message):
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
