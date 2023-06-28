import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_bloc/presentation/new_and_hot/widgets/everyone_watching_widget.dart';
import 'package:netflix_bloc/presentation/widgets/video_widget.dart';
import '../../core/colors/colors.dart';
import '../../core/constants/constants.dart';
import '../widgets/icon_title_widget.dart';
import 'widgets/coming_soon_widget_tile.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast,
                    size: 30,
                    color: kWhiteColor,
                  ),
                ),
                kWidth10,
                Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 11),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 68, 67, 67),
                        Color.fromARGB(255, 170, 169, 169),
                      ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                    ),
                  ),
                ),
                kWidth10,
              ],
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kWhiteColor,
                labelColor: kBlackColor,
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: kBorderRadius30,
                ),
                indicatorPadding: const EdgeInsets.only(
                  bottom: 5,
                  left: 10,
                  right: 10,
                ),
                tabs: const [
                  Tab(
                    text: ' 🍟 Coming soon ',
                  ),
                  Tab(
                    text: ' 👀 Everyone\'s watching ',
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            _buildComingSoonView(),
            _buildEveryonesWatchingView(),
          ]),
        ),
      ),
    );
  }

  Widget _buildComingSoonView() {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ComingSoonWidgetTile();
        });
  }

  Widget _buildEveryonesWatchingView() {
    return ListView.builder(
       physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index){
      return const EveryoneWatchingWidget();
    });
  }
}
