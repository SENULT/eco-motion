import '../controller/dashboard_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardSevenScreen.
///
/// This class ensures that the DashboardSevenController is created when the
/// DashboardSevenScreen is first loaded.
class DashboardSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardSevenController());
  }
}
