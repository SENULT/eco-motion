import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/core/utils/validation_functions.dart';
import 'package:full_app/widgets/custom_elevated_button.dart';
import 'package:full_app/widgets/custom_outlined_button.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/signup_controller.dart';
import 'package:full_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  height: 226.v,
                                  width: 260.h),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_signup".tr,
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_please_signup_to".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray900)),
                              SizedBox(height: 25.v),
                              _buildLanguage(),
                              SizedBox(height: 8.v),
                              _buildEmail(),
                              SizedBox(height: 24.v),
                              _buildSignup(),
                              SizedBox(height: 21.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff6b7280),
                                    TextSpan(
                                        text: "lbl_login2".tr,
                                        style:
                                            CustomTextStyles.bodyMediumff1882ff)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 21.v),
                              Text("lbl_or_login_with".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray300),
                              SizedBox(height: 7.v),
                              _buildLoginWithGoogle(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildLanguage() {
    return CustomTextFormField(
        controller: controller.languageController,
        hintText: "lbl".tr,
        hintStyle: CustomTextStyles.bodyMediumEpilogueGray900,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconProfile,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_your_email_address".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconMail,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildSignup() {
    return CustomElevatedButton(text: "lbl_signup".tr);
  }

  /// Section Widget
  Widget _buildLoginWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgBrandLogoIcons,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        onPressed: () {
          onTapLoginWithGoogle();
        });
  }

  onTapLoginWithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
