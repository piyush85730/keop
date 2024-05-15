import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keop/core/constants/image_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/scaffold_background.dart';
import 'package:keop/feature/full_count/presentation/controller/full_count_controller.dart';
import 'package:keop/feature/full_count/presentation/widgets/buttons.dart';
import 'package:keop/feature/full_count/presentation/widgets/check_box_widget.dart';
import 'package:keop/feature/full_count/presentation/widgets/full_count.dart';
import 'package:keop/feature/full_count/presentation/widgets/items.dart';
import 'package:keop/feature/full_count/presentation/widgets/menu_items.dart';

class FullCountPage extends StatelessWidget {
  FullCountPage({super.key});

  final controller = Get.find<FullCountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.clrBlack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeColors.clrBlack,
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
            color: ThemeColors.clrWhite,
          ),
        ),
        title: Image.asset(
          ImageConstants.imgKeopLogo,
          height: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: ThemeColors.clrWhite,
            ),
          ),
        ],
      ),
      body: ScaffoldBackground(
        opacity: 0.2,
        child: Column(
          children: [
            const FullCount(),
            const Items(),
            const MenuItems(),
            const Spacer(),
            CheckBoxWidget(controller: controller),
            const Buttons(),
          ],
        ),
      ),
    );
  }
}
