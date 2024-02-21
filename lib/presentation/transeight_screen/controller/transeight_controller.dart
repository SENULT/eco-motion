import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transeight_screen/models/transeight_model.dart';

/// A controller class for the TranseightScreen.
///
/// This class manages the state of the TranseightScreen, including the
/// current transeightModelObj
class TranseightController extends GetxController {
  Rx<TranseightModel> transeightModelObj = TranseightModel().obs;
}
