import '../controller/transone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransoneScreen.
///
/// This class ensures that the TransoneController is created when the
/// TransoneScreen is first loaded.
class TransoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransoneController());
  }
}
