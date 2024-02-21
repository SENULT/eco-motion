import '../controller/aqi_scale_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AqiScaleScreen.
///
/// This class ensures that the AqiScaleController is created when the
/// AqiScaleScreen is first loaded.
class AqiScaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AqiScaleController());
  }
}
