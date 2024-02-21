import '../controller/aqi_notification_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AqiNotificationOneScreen.
///
/// This class ensures that the AqiNotificationOneController is created when the
/// AqiNotificationOneScreen is first loaded.
class AqiNotificationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AqiNotificationOneController());
  }
}
