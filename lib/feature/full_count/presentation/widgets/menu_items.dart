import 'package:flutter/material.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonDivider(),
          Container(
            margin: const EdgeInsets.only(left: 35, top: 17, bottom: 17),
            child: const Text(
              StringConstants.strFinishLater,
              style: TextStyle(
                fontSize: 16,
                color: ThemeColors.clrWhite,
              ),
            ),
          ),
          commonDivider(),
          Container(
            margin: const EdgeInsets.only(left: 35, top: 17, bottom: 17),
            child: const Text(
              StringConstants.strCancelCount,
              style: TextStyle(
                fontSize: 16,
                color: ThemeColors.clrWhite,
              ),
            ),
          ),
          commonDivider(),
          Container(
            margin: const EdgeInsets.only(left: 35, top: 17, bottom: 17),
            child: const Text(
              StringConstants.strCompleteCount,
              style: TextStyle(
                fontSize: 16,
                color: ThemeColors.clrWhite,
              ),
            ),
          ),
          commonDivider(),
        ],
      ),
    );
  }

  Widget commonDivider() {
    return const Divider(
      color: ThemeColors.clrDivider,
      indent: 20,
      endIndent: 20,
    );
  }
}
