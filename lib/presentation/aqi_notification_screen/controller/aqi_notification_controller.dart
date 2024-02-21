import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/aqi_notification_screen/models/aqi_notification_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AqiNotificationScreen.
///
/// This class manages the state of the AqiNotificationScreen, including the
/// current aqiNotificationModelObj
class AqiNotificationController extends GetxController {
  TextEditingController nortchController = TextEditingController();

  Rx<AqiNotificationModel> aqiNotificationModelObj = AqiNotificationModel().obs;

  @override
  void onClose() {
    super.onClose();
    nortchController.dispose();
  }
}
