import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/core/utils/validation_functions.dart';
import 'package:full_app/widgets/custom_checkbox_button.dart';
import 'package:full_app/widgets/custom_elevated_button.dart';
import 'package:full_app/widgets/custom_outlined_button.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/dashboard_three_controller.dart';
import 'package:full_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class DashboardThreeDialog extends StatelessWidget {
  DashboardThreeDialog(this.controller, {Key? key}) : super(key: key);

  DashboardThreeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_login".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 5.v),
          Text("msg_please_login_to".tr,
              style: CustomTextStyles.bodyMediumGray900),
          SizedBox(height: 33.v),
          CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_your_email_address".tr,
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
              borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
              fillColor: appTheme.whiteA700),
          SizedBox(height: 8.v),
          Obx(() => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "lbl_your_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
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
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              contentPadding: EdgeInsets.symmetric(vertical: 14.v),
              borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
              fillColor: appTheme.whiteA700)),
          SizedBox(height: 12.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Obx(() => CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: controller.rememberMe.value,
                onChange: (value) {
                  controller.rememberMe.value = value;
                })),
            Text("msg_forgot_password".tr,
                style: CustomTextStyles.bodyMediumPrimary)
          ]),
          SizedBox(height: 26.v),
          CustomElevatedButton(
              text: "lbl_login".tr,
              buttonStyle: CustomButtonStyles.fillPrimary),
          SizedBox(height: 21.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "msg_don_t_have_an_account2".tr,
                    style: CustomTextStyles.bodyMediumff6b7280),
                TextSpan(text: " "),
                TextSpan(
                    text: "lbl_signup".tr,
                    style: CustomTextStyles.bodyMediumff1882ff)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 21.v),
          Text("lbl_or_login_with".tr,
              style: CustomTextStyles.bodyMediumBluegray300),
          SizedBox(height: 7.v),
          CustomOutlinedButton(
              text: "msg_login_with_google2".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBrandLogoIcons,
                      height: 16.adaptSize,
                      width: 16.adaptSize)),
              onPressed: () {
                onTapLoginWithGoogle();
              }),
          SizedBox(height: 8.v)
        ]));
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
