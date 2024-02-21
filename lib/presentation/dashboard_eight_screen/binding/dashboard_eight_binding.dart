import '../controller/dashboard_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardEightScreen.
///
/// This class ensures that the DashboardEightController is created when the
/// DashboardEightScreen is first loaded.
class DashboardEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardEightController());
  }
}
