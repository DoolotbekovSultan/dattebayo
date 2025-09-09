import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/app_colors/constant/constant_app_colors.dart';
import 'package:dattebayo/core/theme/text_styles/constant_app_text_styles.dart';
import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/jutsu/jutsu_tab.dart';
import 'package:dattebayo/features/basic/presentation/widgets/detail_entity/tabs/nature/nature_tab.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/bloc/tailed_beasts_bloc.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/widgets/detail_tailed_beast/tabs/family/tailed_beast_family_tab.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/widgets/detail_tailed_beast/tabs/info/tailed_beast_info_tab.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/widgets/detail_tailed_beast/tabs/unique_traints/tailed_beast_unique_traints_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTailedBeastScreen extends StatelessWidget {
  final int? id;
  const DetailTailedBeastScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
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
                              color: ConstantAppColors.narutoColor,
                            ),
                            flexibleSpace: FlexibleSpaceBar(
                              title: Text(
                                tailedBeast?.name ?? "No name",
                                style: ConstantAppTextStyles.nameTitle,
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
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: (tailedBeast != null)
                                    ? [
                                        TailedBeastInfoTab(
                                          tailedBeast: tailedBeast,
                                        ),
                                        TailedBeastFamilyTab(
                                          family: tailedBeast.family,
                                        ),
                                        JutsuTab(
                                          jutsuList: tailedBeast.jutsu ?? [],
                                        ),
                                        NatureTab(
                                          natureType:
                                              tailedBeast.natureType ?? [],
                                        ),
                                        TailedBeastUniqueTraintsTab(
                                          uniqueTraints:
                                              tailedBeast.uniqueTraits ?? [],
                                        ),
                                      ]
                                    : [Center(child: Text("No data"))],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                case TailedBeastsError(:final message):
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
