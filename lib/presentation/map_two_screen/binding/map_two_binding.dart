import '../controller/map_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapTwoScreen.
///
/// This class ensures that the MapTwoController is created when the
/// MapTwoScreen is first loaded.
class MapTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapTwoController());
  }
}
