import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: itemsItem(
            height: 140,
            margin: const EdgeInsets.only(left: 20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 30,
                    color: ThemeColors.clrItemGreen,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  StringConstants.strItemsCounted,
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.clrWhite,
                  ),
                ),
                Text(
                  StringConstants.strNothingCounted,
                  style: TextStyle(
                    fontSize: 12,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: itemsItem(
            height: 140,
            margin: const EdgeInsets.only(right: 20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "4,605",
                  style: TextStyle(
                    fontSize: 30,
                    color: ThemeColors.clrItemYellow,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  StringConstants.strItemsRemaining,
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.clrWhite,
                  ),
                ),
                Text(
                  "100% ${StringConstants.strOf} 4,605",
                  style: TextStyle(
                    fontSize: 12,
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

  Widget itemsItem({
    EdgeInsetsGeometry? padding = EdgeInsets.zero,
    EdgeInsetsGeometry? margin,
    Widget? child,
    double? height,
  }) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      decoration: BoxDecoration(
        color: ThemeColors.clrItem,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
