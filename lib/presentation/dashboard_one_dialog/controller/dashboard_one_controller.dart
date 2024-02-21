import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_one_dialog/models/dashboard_one_model.dart';

/// A controller class for the DashboardOneDialog.
///
/// This class manages the state of the DashboardOneDialog, including the
/// current dashboardOneModelObj
class DashboardOneController extends GetxController {
  Rx<DashboardOneModel> dashboardOneModelObj = DashboardOneModel().obs;
}
