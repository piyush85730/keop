import 'package:flutter/material.dart';
import 'package:keop/core/constants/image_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/domain/methods/methods.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.maxFinite,
      color: ThemeColors.clrWhite.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting(),
                style: const TextStyle(
                  fontSize: 22,
                  color: ThemeColors.clrText,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Eric",
                style: TextStyle(
                  fontSize: 32,
                  color: ThemeColors.clrText,
                ),
              ),
            ],
          ),
          Image.asset(ImageConstants.imgTestUser),
        ],
      ),
    );
  }
}
