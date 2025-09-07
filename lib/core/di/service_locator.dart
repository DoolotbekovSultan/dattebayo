import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/characters/data/datasources/characters_datasouces.dart';
import 'package:dattebayo/features/characters/data/datasources/characters_datasouces_impl.dart';
import 'package:dattebayo/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:dattebayo/features/characters/domain/repositories/characters_repository.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'package:dattebayo/features/characters/domain/usecases/get_characters_usecase.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/tailed_beasts_datasources.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/tailed_beasts_datasources_impl.dart';
import 'package:dattebayo/features/tailed_beasts/data/repositories/tailed_beasts_repository_impl.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beast_by_id_usecase.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beasts_usecase.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:dattebayo/features/tailed_beasts/domain/repositories/tailed_beasts_repository.dart';

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
    ..registerLazySingleton<CharactersRepository>(
      () => CharactersRepositoryImpl(dataSources: serviceLocator()),
    )
    // -tailed_beasts-
    ..registerLazySingleton<TailedBeastsRepository>(
      () => TailedBeastsRepositoryImpl(dataSources: serviceLocator()),
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
    ..registerLazySingleton<CharactersDataSources>(
      () => CharactersDataSourcesImpl(apiService: serviceLocator()),
    )
    // -tailed-beasts-
    ..registerLazySingleton<TailedBeastsDatasources>(
      () => TailedBeastsDatasourcesImpl(apiService: serviceLocator()),
    )
    // --- ApiService ---
    ..registerLazySingleton(() => ApiService(dio: serviceLocator()))
    // --- Dio ---
    ..registerLazySingleton(() => Dio());
}
