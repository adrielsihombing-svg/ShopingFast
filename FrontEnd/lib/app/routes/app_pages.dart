import 'package:get/get.dart';
import 'package:shopping_fast/app/modules/dashboard/bindings/dashboard_bindings.dart';
import 'package:shopping_fast/app/modules/dashboard/view/dashboard.dart';
import 'package:shopping_fast/app/modules/home/bindings/comment_bindings.dart';
import 'package:shopping_fast/app/modules/home/bindings/home_bindings.dart';
import 'package:shopping_fast/app/modules/home/view/home_page.dart';
import 'package:shopping_fast/app/routes/routes.dart';
import 'package:shopping_fast/app/modules/home/view/ItemsBio.dart';

class AppPages {
  final INITIAL = Routes.Dashboard;

  static final routes = [
    GetPage(
      name: Routes.Dashboard, 
      page: () => Dashboard(),
      binding: DashboardBindings()
      ),

    GetPage(
      name: Routes.cardItem, 
      page: () => Itemsbio(),
      binding: CommentBindings()
      )
  ];
}