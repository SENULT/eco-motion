import '../controller/dashboard_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardSixScreen.
///
/// This class ensures that the DashboardSixController is created when the
/// DashboardSixScreen is first loaded.
class DashboardSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardSixController());
  }
}
