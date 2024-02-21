import '../controller/map_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapThreeScreen.
///
/// This class ensures that the MapThreeController is created when the
/// MapThreeScreen is first loaded.
class MapThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapThreeController());
  }
}
