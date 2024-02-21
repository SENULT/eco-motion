import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transthree_screen/models/transthree_model.dart';

/// A controller class for the TransthreeScreen.
///
/// This class manages the state of the TransthreeScreen, including the
/// current transthreeModelObj
class TransthreeController extends GetxController {
  Rx<TransthreeModel> transthreeModelObj = TransthreeModel().obs;
}
