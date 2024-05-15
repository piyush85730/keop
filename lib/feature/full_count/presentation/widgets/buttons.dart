import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.only(left: 38),
                decoration: const BoxDecoration(
                  color: ThemeColors.accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: const Text(
                  StringConstants.strBrowse,
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.only(right: 38),
                decoration: const BoxDecoration(
                  color: ThemeColors.accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Text(
                  StringConstants.strCount.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: ThemeColors.clrWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
