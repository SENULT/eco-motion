import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_container_screen/models/dashboard_four_container_model.dart';

/// A controller class for the DashboardFourContainerScreen.
///
/// This class manages the state of the DashboardFourContainerScreen, including the
/// current dashboardFourContainerModelObj
class DashboardFourContainerController extends GetxController {
  Rx<DashboardFourContainerModel> dashboardFourContainerModelObj =
      DashboardFourContainerModel().obs;
}
