import '../controller/dashboard_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardFiveScreen.
///
/// This class ensures that the DashboardFiveController is created when the
/// DashboardFiveScreen is first loaded.
class DashboardFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardFiveController());
  }
}
