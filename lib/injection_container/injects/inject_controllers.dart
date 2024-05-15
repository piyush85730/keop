import 'package:get/get.dart';
import 'package:keop/feature/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:keop/feature/full_count/presentation/controller/full_count_controller.dart';
import 'package:keop/injection_container/injection_container_imports.dart';

class InjectableControllers {
  InjectableControllers.inject() {
    Get
      ..lazyPut<ServerHandshakeController>(
        ServerHandshakeController.new,
        fenix: true,
      )
      ..lazyPut<SignInController>(
        SignInController.new,
        fenix: true,
      )
      ..lazyPut<DashboardController>(
        DashboardController.new,
        fenix: true,
      )
      ..lazyPut<FullCountController>(
        FullCountController.new,
        fenix: true,
      );
  }
}
