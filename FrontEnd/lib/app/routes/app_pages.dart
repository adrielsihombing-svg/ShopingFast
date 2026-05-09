import 'package:get/get.dart';
import 'package:shopping_fast/app/modules/dashboard/bindings/dashboard_bindings.dart';
import 'package:shopping_fast/app/modules/dashboard/view/dashboard.dart';
import 'package:shopping_fast/app/modules/home/bindings/home_bindings.dart';
import 'package:shopping_fast/app/modules/home/view/home_page.dart';
import 'package:shopping_fast/app/routes/routes.dart';

class AppPages {
  final INITIAL = Routes.Dashboard;
  final Home = Routes.Home;

  static final routes = [
    GetPage(
      name: Routes.Dashboard, 
      page: () => Dashboard(),
      binding: DashboardBindings()
      ),
  ];
}