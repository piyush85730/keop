import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keop/core/constants/theme_constants.dart';

class ChangeLocation extends StatelessWidget {
  const ChangeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      color: ThemeColors.clrBg.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "DALLAS",
            style: TextStyle(
              fontSize: 18,
              color: ThemeColors.clrText,
            ),
          ),
          GestureDetector(
            child: const Text(
              "change location",
              style: TextStyle(
                fontSize: 11,
                color: ThemeColors.clrText2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
