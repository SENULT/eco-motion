import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_eight_screen/models/dashboard_eight_model.dart';

/// A controller class for the DashboardEightScreen.
///
/// This class manages the state of the DashboardEightScreen, including the
/// current dashboardEightModelObj
class DashboardEightController extends GetxController {
  Rx<DashboardEightModel> dashboardEightModelObj = DashboardEightModel().obs;
}
