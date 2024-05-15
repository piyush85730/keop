import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/feature/full_count/presentation/controller/full_count_controller.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    required this.controller,
    super.key,
  });

  final FullCountController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return GestureDetector(
              onTap: controller.changeCheck,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: controller.isChecked.value
                      ? ThemeColors.accentColor
                      : ThemeColors.clrTransparent,
                  border: Border.all(
                    color: controller.isChecked.value
                        ? ThemeColors.accentColor
                        : ThemeColors.clrWhite,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: controller.isChecked.value
                      ? const Icon(
                          Icons.check,
                          size: 15,
                          color: ThemeColors.clrBlack,
                        )
                      : const Icon(
                          Icons.check_box_outline_blank,
                          size: 15,
                          color: ThemeColors.clrTransparent,
                        ),
                ),
              ),
            );
          }),
          const SizedBox(width: 10),
          const Text(
            StringConstants.strScanAfterScan,
            style: TextStyle(
              fontSize: 15,
              color: ThemeColors.clrWhite,
            ),
          ),
        ],
      ),
    );
  }
}
