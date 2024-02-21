import '../controller/aqi_notification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AqiNotificationScreen.
///
/// This class ensures that the AqiNotificationController is created when the
/// AqiNotificationScreen is first loaded.
class AqiNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AqiNotificationController());
  }
}
