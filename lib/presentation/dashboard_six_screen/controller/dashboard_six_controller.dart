import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_six_screen/models/dashboard_six_model.dart';

/// A controller class for the DashboardSixScreen.
///
/// This class manages the state of the DashboardSixScreen, including the
/// current dashboardSixModelObj
class DashboardSixController extends GetxController {
  Rx<DashboardSixModel> dashboardSixModelObj = DashboardSixModel().obs;
}
