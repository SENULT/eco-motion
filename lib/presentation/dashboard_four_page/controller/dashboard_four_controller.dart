import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/models/dashboard_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardFourPage.
///
/// This class manages the state of the DashboardFourPage, including the
/// current dashboardFourModelObj
class DashboardFourController extends GetxController {
  DashboardFourController(this.dashboardFourModelObj);

  TextEditingController threeController = TextEditingController();

  Rx<DashboardFourModel> dashboardFourModelObj;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  @override
  void onClose() {
    super.onClose();
    threeController.dispose();
  }
}
