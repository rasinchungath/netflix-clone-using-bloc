import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 8,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedItemColor: kWhiteColor,
            unselectedItemColor: kGreyColor,
            backgroundColor: kBackGroundColor,
            selectedIconTheme: const IconThemeData(
              color: kWhiteColor,
            ),
            unselectedIconTheme: const IconThemeData(
              color: kGreyColor,
            ),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: 'Fast Laugh'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'Downloads'),
            ]);
      },
    );
  }
}
