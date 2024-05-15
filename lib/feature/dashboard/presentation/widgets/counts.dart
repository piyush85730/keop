import 'package:flutter/material.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/blue_custome_container.dart';

class Counts extends StatelessWidget {
  const Counts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: BlueCustomContainer(
            height: 135,
            margin: EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.history,
                  color: ThemeColors.accentColor,
                  size: 30,
                ),
                SizedBox(height: 15),
                Text(
                  StringConstants.strRecent,
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.clrWhite,
                  ),
                ),
                Text(
                  StringConstants.strCounts,
                  style: TextStyle(
                    fontSize: 14,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 21),
        Expanded(
          child: BlueCustomContainer(
            height: 135,
            margin: EdgeInsets.only(right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow_outlined,
                  color: ThemeColors.accentColor,
                  size: 35,
                ),
                SizedBox(height: 12),
                Text(
                  StringConstants.strResume,
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.clrWhite,
                  ),
                ),
                Text(
                  StringConstants.strCounts,
                  style: TextStyle(
                    fontSize: 14,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
