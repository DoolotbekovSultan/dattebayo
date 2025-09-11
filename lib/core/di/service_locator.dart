import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/basic/data/datasources/local/local_datasource.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/remote_datasouce.dart';
import 'package:dattebayo/features/characters/data/datasources/local/characters_local_datasource.dart';
import 'package:dattebayo/features/characters/data/datasources/remote/characters_remote_datasouce_impl.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:dattebayo/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:dattebayo/features/basic/domain/repositories/repository.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_characters_usecase.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/local/tailed_beasts_local_darasource.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/remote/tailed_beasts_remote_datasource_impl.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/repositories/tailed_beasts_repository_impl.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beast_by_id_usecase.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beasts_usecase.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  serviceLocator
    // --- UseCases ---
    // -characters-
    ..registerLazySingleton(
      () => GetCharactersUsecase(repository: serviceLocator()),
    )
    ..registerLazySingleton(
      () => GetCharacterByIdUsecase(repository: serviceLocator()),
    )
    // -tailed-beasts-
    ..registerLazySingleton(
      () => GetTailedBeastsUsecase(repository: serviceLocator()),
    )
    ..registerLazySingleton(
      () => GetTailedBeastByIdUsecase(repository: serviceLocator()),
    )
    // --- Repository ---
    // -characters-
    ..registerLazySingleton<Repository<Character>>(
      () => CharactersRepositoryImpl(
        routeDatasource: serviceLocator(),
        localDatasource: serviceLocator(),
      ),
    )
    // -tailed_beasts-
    ..registerLazySingleton<Repository<TailedBeast>>(
      () => TailedBeastsRepositoryImpl(
        routeDatasource: serviceLocator(),
        localDatasource: serviceLocator(),
      ),
    )
    // --- Bloc ---
    // -characters-
    ..registerFactory(
      () => CharactersBloc(
        getCharactersUsecase: serviceLocator(),
        getCharacterByIdUsecase: serviceLocator(),
      ),
    )
    // -tailed_beasts-
    ..registerFactory(
      () => TailedBeastsBloc(
        getTailedBeastsUsecase: serviceLocator(),
        getTailedBeastByIdUsecase: serviceLocator(),
      ),
    )
    // --- DataSource ---
    // -characters-
    // route
    ..registerLazySingleton<RemoteDatasource<CharacterModel>>(
      () => CharactersRemoteDatasourceImpl(apiService: serviceLocator()),
    )
    // local
    ..registerLazySingleton<LocalDatasource<CharacterModel>>(
      () => CharactersLocalDatasourceImpl(),
    )
    // -tailed-beasts-
    // route
    ..registerLazySingleton<RemoteDatasource<TailedBeastModel>>(
      () => TailedBeastsRemoteDatasourceImpl(apiService: serviceLocator()),
    )
    // local
    ..registerLazySingleton<LocalDatasource<TailedBeastModel>>(
      () => TailedBeastLocalDatasourceImpl(),
    )
    // --- ApiService ---
    ..registerLazySingleton(() => ApiService(dio: serviceLocator()))
    // --- Dio ---
    ..registerLazySingleton(() => Dio());
}
