import 'package:flutter/material.dart';
import 'package:stream_me/android/app/src/utils/color_palette.dart';

class StreaMeTab extends StatelessWidget {
  final String tabTitle;
  final int tabIndex;
  final TabController tabController;
  final bool isWatchlist;

  StreaMeTab(
      {super.key,
      required this.tabTitle,
      required this.tabIndex,
      required this.tabController,
      required this.isWatchlist});

  final ColorPalette color = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: isWatchlist ? const EdgeInsets.only(left: 15.0, right: 15.0) : null, //TODO: CHANGE THIS ONLY FOR WATCHLIST TABBAR
      //width: widthNeeded ? 100 : null,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
              color: tabController.index == tabIndex
                  ? color.bodyTextColor
                  : Colors.grey,
              width: 1.0)),
      child: Align(
        alignment: Alignment.center,
        child: Text(tabTitle,
            style: TextStyle(
                fontSize: 14 * 1 / MediaQuery.of(context).textScaleFactor)),
      ),
    );
  }
}
