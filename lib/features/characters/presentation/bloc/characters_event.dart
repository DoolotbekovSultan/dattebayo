part of 'characters_bloc.dart';

@immutable
abstract class CharactersEvent {}

class GetCharactersEvent extends CharactersEvent {
  final String? name;
  GetCharactersEvent({this.name});
}

class GetCharacterByIdEvent extends CharactersEvent {
  final int id;
  GetCharacterByIdEvent({required this.id});
}
