import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_seven_screen/models/dashboard_seven_model.dart';

/// A controller class for the DashboardSevenScreen.
///
/// This class manages the state of the DashboardSevenScreen, including the
/// current dashboardSevenModelObj
class DashboardSevenController extends GetxController {
  Rx<DashboardSevenModel> dashboardSevenModelObj = DashboardSevenModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
