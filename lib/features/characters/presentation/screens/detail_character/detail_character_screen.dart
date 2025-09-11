import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/app_colors/constant/constant_app_colors.dart';
import 'package:dattebayo/core/theme/text_styles/constant_app_text_styles.dart';
import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/family/character_family_tab.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/info/character_info_tab.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/jutsu/jutsu_tab.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/nature/nature_tab.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/tools/character_tools_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailCharacterScreen extends StatelessWidget {
  final int? id;
  const DetailCharacterScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) =>
              serviceLocator<CharactersBloc>()
                ..add(GetCharacterByIdEvent(id: id ?? 0)),
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              switch (state) {
                case CharactersLoading():
                  return const Center(child: CircularProgressIndicator());
                case GetCharacterByIdSuccess(:final character):
                  return DefaultTabController(
                    length: 5,
                    child: Scaffold(
                      body: NestedScrollView(
                        headerSliverBuilder: (context, innerBoxIsScrolled) => [
                          SliverAppBar(
                            expandedHeight: Dimentions.silverAppBarHeight,
                            pinned: true,
                            backgroundColor: Theme.of(context).cardColor,
                            iconTheme: IconThemeData(
                              color: ConstantAppColors.narutoColor,
                            ),
                            flexibleSpace: FlexibleSpaceBar(
                              title: Text(
                                character?.name ?? "No name",
                                style: ConstantAppTextStyles.nameTitle,
                              ),
                              background: PageView(
                                children:
                                    (character != null &&
                                        character.images != null)
                                    ? (character.images!.map(
                                        (url) => Image(
                                          image: CachedNetworkImageProvider(
                                            url,
                                          ),
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (
                                                context,
                                                error,
                                                stackTrace,
                                              ) => Center(
                                                child: Center(
                                                  child: Icon(
                                                    Icons.person,
                                                    size:
                                                        Dimentions
                                                            .silverAppBarHeight *
                                                        0.8,
                                                  ),
                                                ),
                                              ),
                                          loadingBuilder:
                                              (
                                                context,
                                                child,
                                                loadingProgress,
                                              ) {
                                                if (loadingProgress == null) {
                                                  return child;
                                                }
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              },
                                        ),
                                      )).toList()
                                    : [
                                        Icon(
                                          Icons.person,
                                          size:
                                              Dimentions.silverAppBarHeight *
                                              0.8,
                                        ),
                                      ],
                              ),
                            ),
                          ),
                        ],
                        body: Column(
                          children: [
                            const TabBar(
                              isScrollable: true,
                              tabs: [
                                Tab(text: "Info"),
                                Tab(text: "Family"),
                                Tab(text: "Jutsu"),
                                Tab(text: "Nature"),
                                Tab(text: "Tools"),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: (character != null)
                                    ? [
                                        CharacterInfoTab(character: character),
                                        CharacterFamilyTab(
                                          character: character,
                                        ),
                                        JutsuTab(
                                          jutsuList: character.jutsu ?? [],
                                        ),
                                        NatureTab(
                                          natureType:
                                              character.natureType ?? [],
                                        ),
                                        CharacterToolsTab(character: character),
                                      ]
                                    : [Center(child: Text("No data"))],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                case CharactersError(:final message):
                  return Text(message);
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class CharacterDetailPage extends StatelessWidget {
  final Map<String, dynamic> character;

  const CharacterDetailPage({super.key, required this.character});

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(character['name']),
                background: PageView(
                  children: images.map((url) {
                    return Image.network(url, fit: BoxFit.cover);
                  }).toList(),
                ),
              ),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: "Info"),
                  Tab(text: "Family"),
                  Tab(text: "Jutsu"),
                  Tab(text: "Nature"),
                  Tab(text: "Tools"),
                ],
              ),
            )
          ],
          body: TabBarView(
            children: [
              // --- Info ---
              ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildCard("Debut", debut.entries
                      .map((e) => "${e.key}: ${e.value}")
                      .join("\n")),
                  _buildCard("Personal", personal.entries
                      .map((e) => "${e.key}: ${e.value}")
                      .join("\n")),
                ],
              ),

              // --- Family ---
              ListView(
                padding: const EdgeInsets.all(16),
                children: family.entries
                    .map((e) => _buildCard(e.key, e.value.toString()))
                    .toList(),
              ),

              // --- Jutsu ---
              ListView(
                padding: const EdgeInsets.all(16),
                children: jutsu.map((j) => ListTile(
                  leading: const Icon(Icons.bolt),
                  title: Text(j),
                )).toList(),
              ),

              // --- Nature Types ---
              ListView(
                padding: const EdgeInsets.all(16),
                children: natureType.map((n) => ListTile(
                  leading: const Icon(Icons.energy_savings_leaf),
                  title: Text(n),
                )).toList(),
              ),

              // --- Tools ---
              ListView(
                padding: const EdgeInsets.all(16),
                children: tools.map((t) => ListTile(
                  leading: const Icon(Icons.construction),
                  title: Text(t),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String content) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

*/
