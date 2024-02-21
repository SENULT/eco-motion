import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transfour_screen/models/transfour_model.dart';

/// A controller class for the TransfourScreen.
///
/// This class manages the state of the TransfourScreen, including the
/// current transfourModelObj
class TransfourController extends GetxController {
  Rx<TransfourModel> transfourModelObj = TransfourModel().obs;
}
