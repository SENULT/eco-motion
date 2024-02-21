import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transsix_bottomsheet/models/transsix_model.dart';

/// A controller class for the TranssixBottomsheet.
///
/// This class manages the state of the TranssixBottomsheet, including the
/// current transsixModelObj
class TranssixController extends GetxController {
  Rx<TranssixModel> transsixModelObj = TranssixModel().obs;

  Rx<String> radioGroup = "".obs;
}
