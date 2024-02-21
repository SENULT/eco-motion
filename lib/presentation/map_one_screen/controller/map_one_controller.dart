import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/map_one_screen/models/map_one_model.dart';

/// A controller class for the MapOneScreen.
///
/// This class manages the state of the MapOneScreen, including the
/// current mapOneModelObj
class MapOneController extends GetxController {
  Rx<MapOneModel> mapOneModelObj = MapOneModel().obs;
}
