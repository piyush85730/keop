import 'package:keop/injection_container/injects/inject_controllers.dart';

Future<void> init() async {
  /// Controllers
  InjectableControllers.inject();
}
