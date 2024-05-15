import 'package:flutter/material.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';

class FullCount extends StatelessWidget {
  const FullCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ThemeColors.accentColor.withOpacity(0.20),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  StringConstants.strFullCount,
                  style: TextStyle(
                    fontSize: 24,
                    color: ThemeColors.clrText,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "count #305032",
                  style: TextStyle(
                    fontSize: 14,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: ThemeColors.clrBg.withOpacity(0.20),
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringConstants.strStarted,
                  style: TextStyle(
                    fontSize: 11,
                    color: ThemeColors.clrText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
