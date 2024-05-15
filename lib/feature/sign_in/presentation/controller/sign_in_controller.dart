import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  Rxn<TextEditingController> userNameController = Rxn<TextEditingController>();
  Rxn<TextEditingController> passwordController = Rxn<TextEditingController>();
  RxBool isPasswordVisible = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    userNameController.value = TextEditingController();
    passwordController.value = TextEditingController();
    isEmailPasswordValidate();
  }

  RxBool isEmailPasswordValidate() {
    final emailValid = userNameController.value!.text.isNotEmpty &&
        userNameController.value!.text.length > 2;

    final passwordValid = passwordController.value!.text.isNotEmpty &&
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
            .hasMatch(passwordController.value!.text);

    return (emailValid && passwordValid).obs;
  }
}
