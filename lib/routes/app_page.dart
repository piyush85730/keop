import 'package:get/get.dart';
import 'package:keop/feature/dashboard/presentation/pages/dashboard_page.dart';
import 'package:keop/feature/full_count/presentation/pages/full_count_page.dart';
import 'package:keop/injection_container/injection_container_imports.dart';

import 'package:keop/routes/app_routes.dart';

class AppPage {
  static List<GetPage> list = [
    GetPage(
      name: AppRoutes.serverHandshakeRoute,
      page: ServerHandshakeScreen.new,
    ),
    GetPage(name: AppRoutes.signInRoute, page: SignInScreen.new),
    GetPage(name: AppRoutes.dashboardPage, page: DashboardPage.new),
    GetPage(name: AppRoutes.fullCountPage, page: FullCountPage.new),
  ];
}
