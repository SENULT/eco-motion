import '../controller/map_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapOneScreen.
///
/// This class ensures that the MapOneController is created when the
/// MapOneScreen is first loaded.
class MapOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapOneController());
  }
}
