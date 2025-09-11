import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/app_theme.dart';
import 'package:dattebayo/features/basic/data/models/components/debut/debut_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/family/character_family_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/age/age_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/height/height_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/components/weight/weight_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/personal/main/character_personal_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/components/ninja_rank/ninja_rank_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/rank/main/rank_model.dart';
import 'package:dattebayo/features/characters/data/models/character/components/voice_actors/voice_actors_model.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/family/tailed_beasts_family_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/components/personal/tailed_beast_personal_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:dattebayo/screens/spash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive
    ..registerAdapter(CharacterModelAdapter())
    ..registerAdapter(VoiceActorsModelAdapter())
    ..registerAdapter(RankModelAdapter())
    ..registerAdapter(NinjaRankModelAdapter())
    ..registerAdapter(CharacterPersonalModelAdapter())
    ..registerAdapter(AgeModelAdapter())
    ..registerAdapter(HeightModelAdapter())
    ..registerAdapter(WeightModelAdapter())
    ..registerAdapter(CharacterFamilyModelAdapter())
    ..registerAdapter(DebutModelAdapter())
    ..registerAdapter(TailedBeastModelAdapter())
    ..registerAdapter(TailedBeastsFamilyModelAdapter())
    ..registerAdapter(TailedBeastPersonalModelAdapter());

  setupLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dattebayo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
