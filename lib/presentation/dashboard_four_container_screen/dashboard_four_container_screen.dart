import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'controller/dashboard_four_container_controller.dart';

class DashboardFourContainerScreen
    extends GetWidget<DashboardFourContainerController> {
  const DashboardFourContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardFourPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardFourPage;
      case BottomBarEnum.Map:
        return AppRoutes.dashboardTwoPage;
      case BottomBarEnum.Transport:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardFourPage:
        return DashboardFourPage();
      case AppRoutes.dashboardTwoPage:
        return DashboardTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
