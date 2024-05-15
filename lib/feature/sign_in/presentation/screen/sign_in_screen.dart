import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keop/core/constants/image_constants.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/custom_text_field.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/scaffold_background.dart';
import 'package:keop/core/utils/library/loading_animation_widget/loading_animation_widget.dart';
import 'package:keop/feature/sign_in/presentation/controller/sign_in_controller.dart';
import 'package:keop/routes/app_routes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final signInController = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: Obx(() {
            if (signInController.isLoading.value) {
              return Stack(
                children: [
                  if (signInController.isLoading.value)
                    Stack(
                      children: [
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: Stack(
                            children: [
                              signInWidget(),
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
              return signInWidget();
            }
          }),
        ),
      ),
    );
  }

  Widget signInWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 2, child: Container()),
          Image.asset(ImageConstants.imgKeopLogo),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Obx(() {
              return CustomTextField(
                hint: StringConstants.strUserNameOrEmailAddress,
                controller: signInController.userNameController.value,
                label: (signInController
                            .userNameController.value!.text.isEmpty ||
                        signInController.userNameController.value!.text == "")
                    ? ""
                    : StringConstants.strUserNameOrEmailAddress,
                onChanges: (str) {
                  signInController.isEmailPasswordValidate();
                  signInController.userNameController.refresh();
                },
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
                suffixIcon: (signInController
                            .userNameController.value!.text.isEmpty ||
                        signInController.userNameController.value!.text == "")
                    ? null
                    : IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: ThemeColors.clrWhite,
                        ),
                        onPressed: () {
                          signInController.userNameController.value!.text = "";
                          signInController.userNameController.refresh();
                        },
                      ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Obx(() {
              return CustomTextField(
                hint: StringConstants.strPassword,
                controller: signInController.passwordController.value,
                isObscureText: !signInController.isPasswordVisible.value,
                label: (signInController
                            .passwordController.value!.text.isEmpty ||
                        signInController.passwordController.value!.text == "")
                    ? ""
                    : StringConstants.strPassword,
                onChanges: (str) {
                  signInController.isEmailPasswordValidate();
                  signInController.passwordController.refresh();
                },
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
                suffixIcon: (signInController
                            .passwordController.value!.text.isEmpty ||
                        signInController.passwordController.value!.text == "")
                    ? null
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              color: ThemeColors.clrTransparent,
                              child: Image.asset(
                                signInController.isPasswordVisible.value
                                    ? ImageConstants.imgPasswordDisable
                                    : ImageConstants.imgPasswordEnable,
                                height: 15,
                                width: 15,
                                color: ThemeColors.clrWhite,
                              ),
                            ),
                            onTap: () {
                              signInController.isPasswordVisible.value =
                                  !signInController.isPasswordVisible.value;
                              signInController.isPasswordVisible.refresh();
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: ThemeColors.clrWhite,
                            ),
                            onPressed: () {
                              signInController.passwordController.value!.text =
                                  "";
                              signInController.passwordController.refresh();
                            },
                          ),
                        ],
                      ),
              );
            }),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(() {
                return Container(
                  margin: const EdgeInsets.only(top: 10, right: 10,left: 5),
                  height: 17,
                  width: 17,
                  child: Checkbox(
                    value: signInController.isChecked.value,
                    onChanged: (newValue) {
                      signInController.isChecked.value =
                          !signInController.isChecked.value;
                    },
                    side: const BorderSide(color: ThemeColors.clrArrow),
                  ),
                );
              }),
              Text(
                StringConstants.strRememberMe,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: ThemeColors.clrWhite,
                    ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Obx(() {
              return ElevatedButton(
                onPressed: () async {
                  if (signInController.isEmailPasswordValidate().value) {
                    signInController.isLoading.value = true;
                    await Future.delayed(const Duration(seconds: 2), () {
                      Get.toNamed(AppRoutes.dashboardPage);
                      signInController.isLoading.value = false;
                      signInController.isLoading.refresh();
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor:
                      signInController.isEmailPasswordValidate().value
                          ? ThemeColors.accentColor
                          : ThemeColors.accentDisableColor,
                ),
                child: Text(
                  StringConstants.strSignIn,
                  style: TextStyle(
                    color: signInController.isEmailPasswordValidate().value
                        ? ThemeColors.clrWhite
                        : ThemeColors.clrGrey,
                    fontSize: 24,
                  ),
                ),
              );
            }),
          ),
          Flexible(flex: 3, child: Container()),
          Container(
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "${StringConstants.strChangeServer} | ${StringConstants.strLearnMore}",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ThemeColors.clrWhite,
                      ),
                ),
                const SizedBox(height: 25),
                const Text(
                  StringConstants.strCopyright2024Verasoft,
                  style: TextStyle(color: ThemeColors.clrWhite, fontSize: 8),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
