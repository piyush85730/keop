import 'package:get/get.dart';

class FullCountController extends GetxController {
  RxBool isChecked = false.obs;

  void changeCheck() {
    isChecked.value = !isChecked.value;
  }
}
