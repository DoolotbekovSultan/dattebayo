part of 'characters_bloc.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class GetCharactersSuccess extends CharactersState {
  final List<Character> characters;
  GetCharactersSuccess({required this.characters});
}

class GetCharacterByIdSuccess extends CharactersState {
  final Character? character;
  GetCharacterByIdSuccess({required this.character});
}

class CharactersError extends CharactersState {
  final String message;
  CharactersError({required this.message});
}
