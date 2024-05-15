import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keop/core/constants/image_constants.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/scaffold_background.dart';
import 'package:keop/core/utils/library/loading_animation_widget/src/build_loading_animation.dart';
import 'package:keop/feature/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:keop/feature/dashboard/presentation/widgets/change_location.dart';
import 'package:keop/feature/dashboard/presentation/widgets/counts.dart';
import 'package:keop/feature/dashboard/presentation/widgets/new_counts.dart';
import 'package:keop/feature/dashboard/presentation/widgets/profile_header.dart';
import 'package:keop/routes/app_routes.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final dashboardController = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.clrBlack,
      body: ScaffoldBackground(
        opacity: 0.2,
        child: SafeArea(
          child: Obx(() {
            if (dashboardController.isLoading.value) {
              return Stack(
                children: [
                  if (dashboardController.isLoading.value)
                    Stack(
                      children: [
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: Stack(
                            children: [
                              dashboardWidget(),
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                color: ThemeColors.clrBlack700,
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: LoadingAnimationWidget.waveDots(
                            color: ThemeColors.accentColor,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                ],
              );
            } else {
              return dashboardWidget();
            }
          }),
        ),
      ),
    );
  }

  Widget dashboardWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40,
            bottom: 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImageConstants.imgKeopLogo),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: ThemeColors.clrWhite,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            const ProfileHeader(),
            const ChangeLocation(),
            const SizedBox(height: 30),
            const Counts(),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () async {
                dashboardController.isLoading.value = true;
                await Future.delayed(const Duration(seconds: 2), () {
                  Get.toNamed(AppRoutes.fullCountPage);
                });
              },
              child: const NewCounts(),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: ElevatedButton.icon(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              maximumSize: const Size(double.maxFinite, 50),
              minimumSize: const Size(double.maxFinite, 50),
              backgroundColor: ThemeColors.accentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
            ),
            icon: const Icon(
              Icons.search,
              color: ThemeColors.clrWhite,
              size: 25,
            ),
            label: const Text(
              StringConstants.strLookupProduct,
              style: TextStyle(
                color: ThemeColors.clrWhite,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
