import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  Rxn<TextEditingController> userNameController = Rxn<TextEditingController>();
  Rxn<TextEditingController> passwordController = Rxn<TextEditingController>();
  RxBool isPasswordVisible = false.obs;
  RxBool isLoading = false.obs;
  RxBool isChecked = false.obs;

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
        passwordController.value!.text.length >= 8;

    return (emailValid && passwordValid).obs;
  }
}
