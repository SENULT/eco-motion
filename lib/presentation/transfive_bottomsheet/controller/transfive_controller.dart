import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transfive_bottomsheet/models/transfive_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransfiveBottomsheet.
///
/// This class manages the state of the TransfiveBottomsheet, including the
/// current transfiveModelObj
class TransfiveController extends GetxController {
  TextEditingController locationController = TextEditingController();

  TextEditingController locationController1 = TextEditingController();

  Rx<TransfiveModel> transfiveModelObj = TransfiveModel().obs;

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
    locationController1.dispose();
  }
}
