import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/custom_icon_button.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/aqi_notification_one_controller.dart';

// ignore_for_file: must_be_immutable
class AqiNotificationOneScreen extends GetWidget<AqiNotificationOneController> {
  const AqiNotificationOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 50.v),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup321,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: _buildAQINotification(),
          ),
        ),
        bottomNavigationBar: _buildActionFlashlight(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAQINotification() {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          SizedBox(
            height: 207.v,
            width: 336.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomTextFormField(
                  width: 124.h,
                  controller: controller.nortchController,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.topCenter,
                  borderDecoration: TextFormFieldStyleHelper.fillBlack,
                  fillColor: appTheme.black900,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_airaq".tr,
                            style:
                                CustomTextStyles.titleMediumSFProTextWhiteA700,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsWhiteA700,
                            height: 13.v,
                            width: 77.h,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 4.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      SizedBox(
                        height: 120.v,
                        width: 134.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_9".tr,
                                    style:
                                        CustomTextStyles.sFProDisplayWhiteA700,
                                  ),
                                  SizedBox(
                                    height: 98.v,
                                    child: VerticalDivider(
                                      width: 5.h,
                                      thickness: 5.v,
                                      indent: 50.h,
                                      endIndent: 14.h,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_41".tr,
                                      style: CustomTextStyles
                                          .sFProDisplayWhiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 34.v,
                              width: 23.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 49.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_monday_june_3".tr,
                        style: CustomTextStyles.titleLargeWhiteA700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 9.v),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcon,
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        radius: BorderRadius.circular(
                          19.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcon13x10,
                        height: 13.v,
                        width: 10.h,
                        radius: BorderRadius.circular(
                          7.h,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_grab_an_umbrella".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 243.h,
                      child: Text(
                        "msg_it_might_rain_today".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumSFProTextBlack90013_1
                            .copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 37.v,
                  ),
                  child: Text(
                    "lbl_4m_ago".tr,
                    style: CustomTextStyles.bodyMediumSFProTextBlack90013,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionFlashlight() {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 44.h,
        bottom: 50.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgActionFlashlight,
            ),
          ),
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgActionCamera,
            ),
          ),
        ],
      ),
    );
  }
}
