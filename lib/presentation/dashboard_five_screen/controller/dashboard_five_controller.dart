import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_five_screen/models/dashboard_five_model.dart';

/// A controller class for the DashboardFiveScreen.
///
/// This class manages the state of the DashboardFiveScreen, including the
/// current dashboardFiveModelObj
class DashboardFiveController extends GetxController {
  Rx<DashboardFiveModel> dashboardFiveModelObj = DashboardFiveModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
