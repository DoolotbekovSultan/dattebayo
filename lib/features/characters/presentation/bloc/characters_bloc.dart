import 'package:bloc/bloc.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_characters_usecase.dart';
import 'package:flutter/widgets.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharactersUsecase getCharactersUsecase;
  final GetCharacterByIdUsecase getCharacterByIdUsecase;
  CharactersBloc({
    required this.getCharactersUsecase,
    required this.getCharacterByIdUsecase,
  }) : super(CharactersInitial()) {
    on<GetCharactersEvent>(_onGetCharacters);
    on<GetCharacterByIdEvent>(_onGetCharacterById);
  }

  Future<void> _onGetCharacters(
    GetCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading());
    try {
      final characaters = await getCharactersUsecase(name: event.name);
      emit(GetCharactersSuccess(characters: characaters));
    } catch (e) {
      emit(CharactersError(message: e.toString()));
    }
  }

  Future<void> _onGetCharacterById(
    GetCharacterByIdEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading());
    try {
      final character = await getCharacterByIdUsecase(id: event.id);
      emit(GetCharacterByIdSuccess(character: character));
    } catch (e) {
      emit(CharactersError(message: e.toString()));
    }
  }
}
