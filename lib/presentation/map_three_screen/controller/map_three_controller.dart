import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/map_three_screen/models/map_three_model.dart';

/// A controller class for the MapThreeScreen.
///
/// This class manages the state of the MapThreeScreen, including the
/// current mapThreeModelObj
class MapThreeController extends GetxController {
  Rx<MapThreeModel> mapThreeModelObj = MapThreeModel().obs;
}
