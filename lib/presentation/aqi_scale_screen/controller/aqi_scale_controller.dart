import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/aqi_scale_screen/models/aqi_scale_model.dart';

/// A controller class for the AqiScaleScreen.
///
/// This class manages the state of the AqiScaleScreen, including the
/// current aqiScaleModelObj
class AqiScaleController extends GetxController {
  Rx<AqiScaleModel> aqiScaleModelObj = AqiScaleModel().obs;
}
