import '../controller/transthree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransthreeScreen.
///
/// This class ensures that the TransthreeController is created when the
/// TransthreeScreen is first loaded.
class TransthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransthreeController());
  }
}
