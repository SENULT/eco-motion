import '../controller/transfour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransfourScreen.
///
/// This class ensures that the TransfourController is created when the
/// TransfourScreen is first loaded.
class TransfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransfourController());
  }
}
