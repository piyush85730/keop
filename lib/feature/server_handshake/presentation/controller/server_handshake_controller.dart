import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServerHandshakeController extends GetxController {
  Rxn<TextEditingController> serverUrlController = Rxn<TextEditingController>();
  RxBool isConnecting = false.obs;

  @override
  void onInit() {
    super.onInit();
    serverUrlController.value = TextEditingController();
  }
}
