import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_three_dialog/models/dashboard_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardThreeDialog.
///
/// This class manages the state of the DashboardThreeDialog, including the
/// current dashboardThreeModelObj
class DashboardThreeController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<DashboardThreeModel> dashboardThreeModelObj = DashboardThreeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
