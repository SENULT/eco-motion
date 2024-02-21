import '../controller/transtwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TranstwoScreen.
///
/// This class ensures that the TranstwoController is created when the
/// TranstwoScreen is first loaded.
class TranstwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranstwoController());
  }
}
