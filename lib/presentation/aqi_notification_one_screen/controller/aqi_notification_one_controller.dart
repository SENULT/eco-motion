import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/aqi_notification_one_screen/models/aqi_notification_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AqiNotificationOneScreen.
///
/// This class manages the state of the AqiNotificationOneScreen, including the
/// current aqiNotificationOneModelObj
class AqiNotificationOneController extends GetxController {
  TextEditingController nortchController = TextEditingController();

  Rx<AqiNotificationOneModel> aqiNotificationOneModelObj =
      AqiNotificationOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    nortchController.dispose();
  }
}
