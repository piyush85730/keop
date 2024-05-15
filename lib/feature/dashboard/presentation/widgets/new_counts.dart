import 'package:flutter/material.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/blue_custome_container.dart';

class NewCounts extends StatelessWidget {
  const NewCounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlueCustomContainer(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstants.strStartNewCount,
            style: TextStyle(
              fontSize: 16,
              color: ThemeColors.clrWhite,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: ThemeColors.clrArrow,
            size: 15,
          ),
        ],
      ),
    );
  }
}
