import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/map_two_screen/models/map_two_model.dart';

/// A controller class for the MapTwoScreen.
///
/// This class manages the state of the MapTwoScreen, including the
/// current mapTwoModelObj
class MapTwoController extends GetxController {
  Rx<MapTwoModel> mapTwoModelObj = MapTwoModel().obs;
}
