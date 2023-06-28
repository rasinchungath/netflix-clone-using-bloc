import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/downloads/downloads_screen.dart';
import 'package:netflix_bloc/presentation/fast_laugh/fast_lagh_screen.dart';
import 'package:netflix_bloc/presentation/home/home_screen.dart';
import 'package:netflix_bloc/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflix_bloc/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix_bloc/presentation/search/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _pages = [
    HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughScreen(),
    const SearchScreen(),
    const DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
