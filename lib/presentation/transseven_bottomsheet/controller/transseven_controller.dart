import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transseven_bottomsheet/models/transseven_model.dart';

/// A controller class for the TranssevenBottomsheet.
///
/// This class manages the state of the TranssevenBottomsheet, including the
/// current transsevenModelObj
class TranssevenController extends GetxController {
  Rx<TranssevenModel> transsevenModelObj = TranssevenModel().obs;
}
