import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/custom_radio_button.dart';
import 'controller/transsix_controller.dart';

class TranssixBottomsheet extends StatelessWidget {
  TranssixBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  TranssixController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.v),
        padding: EdgeInsets.symmetric(
          horizontal: 27.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL31,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 780.v,
              width: 319.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(left: 1.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 39.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup45,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 42.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 26.v,
                                  width: 65.h,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 21.v,
                                          width: 31.h,
                                          margin: EdgeInsets.only(top: 2.v),
                                          decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                              5.h,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer,
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(
                                                  0,
                                                  4,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 58.h,
                                          margin: EdgeInsets.only(right: 7.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCarDeepPurple900,
                                                height: 26.v,
                                                width: 23.h,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 4.v,
                                                  bottom: 6.v,
                                                ),
                                                child: Text(
                                                  "lbl_139".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumCustomBlack900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 66,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  height: 9.v,
                                  width: 8.h,
                                  margin: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 11.v,
                                  ),
                                ),
                                Spacer(
                                  flex: 33,
                                ),
                                SizedBox(
                                  height: 26.v,
                                  width: 65.h,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgUserWhiteA700,
                                        height: 26.v,
                                        width: 65.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 3.v,
                                            right: 5.h,
                                          ),
                                          child: Text(
                                            "lbl_d4".tr,
                                            style: CustomTextStyles
                                                .bodyMediumCustomBlack900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                right: 8.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_route_in_total".tr,
                                    style: CustomTextStyles
                                        .bodyLargeCustomDeeppurple900,
                                  ),
                                  Text(
                                    "msg_1_hour_17_minutes".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomBlack900,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18.h,
                              right: 36.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "lbl_quite_crowd".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomAmberA400,
                                  ),
                                ),
                                Text(
                                  "lbl_13_000_vnd".tr,
                                  style:
                                      CustomTextStyles.bodyMediumCustomBlack900,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 41.v),
                          _buildYourLocation(),
                          SizedBox(height: 40.v),
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgWalking,
                                height: 28.v,
                                width: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 19.h,
                                  top: 6.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl_walking_for_80m".tr,
                                  style:
                                      CustomTextStyles.bodyMediumCustomBlack900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 267.v),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 184.v,
                            width: 35.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCarDeepPurple900,
                                  height: 26.adaptSize,
                                  width: 26.adaptSize,
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 159.v,
                                    width: 35.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSubtractDeepPurple900,
                                          height: 159.v,
                                          width: 35.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 8.h,
                                              right: 8.h,
                                              bottom: 6.v,
                                            ),
                                            padding: EdgeInsets.all(5.h),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.deepPurple900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 6.v,
                              bottom: 6.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "msg_1491_huynh_tan_phat".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomBlack900,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 35.h,
                                        margin: EdgeInsets.only(bottom: 12.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.h,
                                          vertical: 1.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillWhiteA.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Text(
                                          "lbl_20".tr,
                                          style: CustomTextStyles
                                              .bodyMediumCustomBlack900,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_50f_01723".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumCustomBlack900,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "msg_arrive_after_3_05".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumCustomBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24.v),
                                SizedBox(
                                  width: 201.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 111.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 22.v,
                                              width: 35.h,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 12.h,
                                                vertical: 4.v,
                                              ),
                                              decoration: AppDecoration
                                                  .fillLightGreenA
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4,
                                              ),
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowDownGray50,
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                alignment: Alignment.topLeft,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 2.v,
                                                bottom: 4.v,
                                              ),
                                              child: Text(
                                                "lbl_6_stations".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumCustomBlack900,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 4.v,
                                        ),
                                        child: Text(
                                          "lbl_35min".tr,
                                          style: CustomTextStyles
                                              .bodyMediumCustomBlack900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 38.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "msg_ham_nghi_bus_depot".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomBlack900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 31.v),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 185.v,
                            width: 35.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComputerLightGreenA70001,
                                  height: 26.adaptSize,
                                  width: 26.adaptSize,
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 161.v,
                                    width: 35.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSubtractLightGreenA70001,
                                          height: 161.v,
                                          width: 35.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 8.h,
                                              right: 8.h,
                                              bottom: 7.v,
                                            ),
                                            padding: EdgeInsets.all(5.h),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.deepPurple900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              bottom: 6.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "lbl_140_ham_nghi".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomBlack900,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.only(bottom: 12.v),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Container(
                                          height: 21.v,
                                          width: 35.h,
                                          decoration: AppDecoration
                                              .outlineOnPrimaryContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgThumbsUp,
                                                height: 21.v,
                                                width: 35.h,
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 6.h,
                                                    top: 1.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_d4".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumCustomBlack900,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_51f_33845".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumCustomBlack900,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "msg_arrive_after_2_34".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumCustomBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 38.v),
                                SizedBox(
                                  width: 202.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 116.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 22.v,
                                              width: 35.h,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 11.h,
                                                vertical: 3.v,
                                              ),
                                              decoration: AppDecoration
                                                  .fillLightGreenA
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4,
                                              ),
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowDownGray50,
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                alignment: Alignment.topRight,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 2.v,
                                                bottom: 4.v,
                                              ),
                                              child: Text(
                                                "lbl_18_stations".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumCustomBlack900,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 4.v,
                                        ),
                                        child: Text(
                                          "lbl_40min".tr,
                                          style: CustomTextStyles
                                              .bodyMediumCustomBlack900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "msg_mar_venus_restaurant3".tr,
                                    style: CustomTextStyles
                                        .bodyMediumCustomBlack900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedinLightGreenA70001,
                    height: 35.v,
                    width: 18.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 13.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "msg_your_destination".tr,
                      style: CustomTextStyles.bodyMediumCustomBlack900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 213.h,
                margin: EdgeInsets.only(right: 29.h),
                child: Text(
                  "msg_88_nguyen_duc_canh2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumCustomBlack900,
                ),
              ),
            ),
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 44.v,
                width: 192.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 41.v,
                        width: 192.h,
                        decoration: BoxDecoration(
                          color: appTheme.deepPurple900,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 28.h,
                        child: Text(
                          "lbl_start".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeCustomWhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 11.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourLocation() {
    return Obx(
      () => CustomRadioButton(
        text: "lbl_your_location".tr,
        value: "lbl_your_location".tr,
        groupValue: controller.radioGroup.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          controller.radioGroup.value = value;
        },
      ),
    );
  }
}
