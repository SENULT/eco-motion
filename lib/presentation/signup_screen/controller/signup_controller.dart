import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    emailController.dispose();
  }
}
