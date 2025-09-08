import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/family/character_family_tab.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/info/character_info_tab.dart';
import 'package:dattebayo/features/basic/presentation/widgets/tabs/jutsu_tab.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/nature/character_nature_tab.dart';
import 'package:dattebayo/features/characters/presentation/widgets/detail_character/tabs/tools/character_tools_tab.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTailedBeastScreen extends StatelessWidget {
  final int? id;
  const DetailTailedBeastScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          serviceLocator<TailedBeastsBloc>()
            ..add(GetTailedBeastByIdEvent(id: id ?? 0)),
      child: BlocBuilder<TailedBeastsBloc, TailedBeastsState>(
        builder: (context, state) {
          switch (state) {
            case TailedBeastsLoading():
              return const Center(child: CircularProgressIndicator());
            case GetTailedBeastByIdSuccess(:final tailedBeast):
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          title: Text(
                            tailedBeast?.name ?? "No name",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          background: PageView(
                            children:
                                (tailedBeast != null &&
                                    tailedBeast.images != null)
                                ? (tailedBeast.images!.map(
                                    (url) => Image.network(
                                      url,
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
                                          (context, child, loadingProgress) {
                                            if (loadingProgress == null)
                                              return child;
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
                                      size: Dimentions.silverAppBarHeight * 0.8,
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
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: (tailedBeast != null)
                                ? [] // TODO:
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
    );
  }
}
