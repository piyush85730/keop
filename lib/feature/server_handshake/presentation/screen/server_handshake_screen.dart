import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keop/core/constants/image_constants.dart';
import 'package:keop/core/constants/string_constants.dart';
import 'package:keop/core/constants/theme_constants.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/custom_text_field.dart';
import 'package:keop/core/shared/presentation/widget/common_widgets/scaffold_background.dart';
import 'package:keop/core/utils/library/loading_animation_widget/loading_animation_widget.dart';
import 'package:keop/feature/server_handshake/presentation/controller/server_handshake_controller.dart';
import 'package:keop/routes/app_routes.dart';

class ServerHandshakeScreen extends StatefulWidget {
  const ServerHandshakeScreen({super.key});

  @override
  State<ServerHandshakeScreen> createState() => _ServerHandshakeScreenState();
}

class _ServerHandshakeScreenState extends State<ServerHandshakeScreen> {
  final serverHandshakeController = Get.find<ServerHandshakeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 2, child: Container()),
                Image.asset(ImageConstants.imgKeopLogo),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 35),
                  child: Obx(() {
                    return serverHandshakeController.isConnecting.value
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringConstants.strConnecting,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: ThemeColors.clrGrey,
                                    ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                serverHandshakeController
                                    .serverUrlController.value!.text,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: ThemeColors.clrWhite,
                                    ),
                              ),
                            ],
                          )
                        : Obx(() {
                            return CustomTextField(
                              hint: StringConstants.strEnterYourKeopServerURK,
                              controller: serverHandshakeController
                                  .serverUrlController.value,
                              label: (serverHandshakeController
                                          .serverUrlController
                                          .value!
                                          .text
                                          .isEmpty ||
                                      serverHandshakeController
                                              .serverUrlController
                                              .value!
                                              .text ==
                                          "")
                                  ? ""
                                  : StringConstants.strEnterYourKeopServerURK,
                              onChanges: (str) {
                                serverHandshakeController.serverUrlController
                                    .refresh();
                              },
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.url,
                              suffixIcon: (serverHandshakeController
                                          .serverUrlController
                                          .value!
                                          .text
                                          .isEmpty ||
                                      serverHandshakeController
                                              .serverUrlController
                                              .value!
                                              .text ==
                                          "")
                                  ? null
                                  : IconButton(
                                      icon: const Icon(
                                        Icons.close,
                                        color: ThemeColors.clrWhite,
                                      ),
                                      onPressed: () {
                                        serverHandshakeController
                                            .serverUrlController
                                            .value!
                                            .text = "";
                                        serverHandshakeController
                                            .serverUrlController
                                            .refresh();
                                      },
                                    ),
                            );
                          });
                  }),
                ),
                SizedBox(
                  height: 45,
                  width: 140,
                  child: Obx(() {
                    return ElevatedButton(
                      onPressed: () async {
                        if (serverHandshakeController
                                .serverUrlController.value!.text.isNotEmpty &&
                            serverHandshakeController
                                    .serverUrlController.value!.text !=
                                "") {
                          serverHandshakeController.isConnecting.value = true;
                          serverHandshakeController.isConnecting.refresh();
                          await Future.delayed(const Duration(seconds: 1), () {
                            Get.toNamed(AppRoutes.signInRoute);
                            serverHandshakeController
                                .serverUrlController.value!.text = "";
                            serverHandshakeController.isConnecting.value =
                                false;
                            serverHandshakeController.serverUrlController
                                .refresh();
                            serverHandshakeController.isConnecting.refresh();
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: (serverHandshakeController
                                    .serverUrlController.value!.text.isEmpty ||
                                serverHandshakeController
                                        .serverUrlController.value!.text ==
                                    "")
                            ? ThemeColors.accentDisableColor
                            : ThemeColors.accentColor,
                      ),
                      child: Obx(() {
                        return serverHandshakeController.isConnecting.value
                            ? LoadingAnimationWidget.waveDots(
                                color: ThemeColors.clrWhite,
                                size: 50,
                              )
                            : Text(
                                StringConstants.strConnect,
                                style: TextStyle(
                                  color: (serverHandshakeController
                                              .serverUrlController
                                              .value!
                                              .text
                                              .isEmpty ||
                                          serverHandshakeController
                                                  .serverUrlController
                                                  .value!
                                                  .text ==
                                              "")
                                      ? ThemeColors.clrGrey
                                      : ThemeColors.clrWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                      }),
                    );
                  }),
                ),
                Flexible(flex: 3, child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
