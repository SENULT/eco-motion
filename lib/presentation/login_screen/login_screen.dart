import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/core/utils/validation_functions.dart';
import 'package:full_app/widgets/custom_checkbox_button.dart';
import 'package:full_app/widgets/custom_elevated_button.dart';
import 'package:full_app/widgets/custom_outlined_button.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart';
import 'package:full_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
                                  child: Text("lbl_login".tr,
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_please_login_to".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray900)),
                              SizedBox(height: 25.v),
                              _buildEmail(),
                              SizedBox(height: 8.v),
                              _buildInput(),
                              SizedBox(height: 12.v),
                              _buildForgetPass(),
                              SizedBox(height: 26.v),
                              _buildLogin(),
                              SizedBox(height: 21.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff6b7280),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "lbl_signup".tr,
                                        style:
                                            CustomTextStyles.bodyMediumff1882ff)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 21.v),
                              Text("lbl_or_login_with".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray300),
                              SizedBox(height: 7.v)
                            ]))))),
            bottomNavigationBar: _buildLoginWithGoogle()));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_abc_email_com".tr,
        hintStyle: CustomTextStyles.bodyLargeGray900_1,
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
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildInput() {
    return Obx(() => CustomTextFormField(
        controller: controller.inputController,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconPassword,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconShowoutline,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: controller.isShowPassword.value,
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
        fillColor: appTheme.whiteA700));
  }

  /// Section Widget
  Widget _buildForgetPass() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Obx(() => CustomCheckboxButton(
          text: "lbl_remember_me".tr,
          value: controller.rememberMe.value,
          onChange: (value) {
            controller.rememberMe.value = value;
          })),
      Text("msg_forgot_password".tr, style: CustomTextStyles.bodyMediumPrimary)
    ]);
  }

  /// Section Widget
  Widget _buildLogin() {
    return CustomElevatedButton(text: "lbl_login".tr);
  }

  /// Section Widget
  Widget _buildLoginWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 36.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgBrandLogoIcons,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGray,
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
