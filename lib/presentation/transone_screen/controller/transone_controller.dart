import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transone_screen/models/transone_model.dart';

/// A controller class for the TransoneScreen.
///
/// This class manages the state of the TransoneScreen, including the
/// current transoneModelObj
class TransoneController extends GetxController {
  Rx<TransoneModel> transoneModelObj = TransoneModel().obs;
}
