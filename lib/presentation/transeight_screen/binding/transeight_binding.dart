import '../controller/transeight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TranseightScreen.
///
/// This class ensures that the TranseightController is created when the
/// TranseightScreen is first loaded.
class TranseightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranseightController());
  }
}
