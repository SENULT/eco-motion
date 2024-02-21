import '../controller/dashboard_four_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardFourContainerScreen.
///
/// This class ensures that the DashboardFourContainerController is created when the
/// DashboardFourContainerScreen is first loaded.
class DashboardFourContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardFourContainerController());
  }
}
