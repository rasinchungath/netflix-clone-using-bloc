import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/search/widgets.dart/search_idle.dart';
//import 'package:netflix_bloc/presentation/search/widgets.dart/search_result_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              prefixInsets: const EdgeInsets.all(8),
              suffixInsets: const EdgeInsets.all(8),
              backgroundColor: kGreyColor.withOpacity(0.4),
              prefixIcon: const Icon(
                Icons.search,
                color: kGreyColor,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kGreyColor,
              ),
              style: TextStyle(
                fontSize: 15,
                color: kWhiteColor,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
            const SizedBox(
              height: 15, 
            ),
            Expanded(child: SearchIdleWidget()),
            //Expanded(child: SearchResultWidget()),
          ],
        ),
      )),
    );
  }
}
