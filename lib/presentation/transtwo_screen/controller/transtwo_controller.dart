import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/transtwo_screen/models/transtwo_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TranstwoScreen.
///
/// This class manages the state of the TranstwoScreen, including the
/// current transtwoModelObj
class TranstwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TranstwoModel> transtwoModelObj = TranstwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
