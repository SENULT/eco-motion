import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_two_page/models/dashboard_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardTwoPage.
///
/// This class manages the state of the DashboardTwoPage, including the
/// current dashboardTwoModelObj
class DashboardTwoController extends GetxController {
  DashboardTwoController(this.dashboardTwoModelObj);

  TextEditingController threeController = TextEditingController();

  Rx<DashboardTwoModel> dashboardTwoModelObj;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    threeController.dispose();
  }
}
