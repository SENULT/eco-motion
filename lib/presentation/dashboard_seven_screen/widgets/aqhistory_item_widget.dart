import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/custom_drop_down.dart';
import '../controller/dashboard_seven_controller.dart';
import '../models/aqhistory_item_model.dart';

// ignore: must_be_immutable
class AqhistoryItemWidget extends StatelessWidget {
  AqhistoryItemWidget(
    this.aqhistoryItemModelObj, {
    Key? key,
    this.onTapAqHistory,
  }) : super(
          key: key,
        );

  AqhistoryItemModel aqhistoryItemModelObj;

  var controller = Get.find<DashboardSevenController>();

  SelectionPopupModel? selectedDropDownValue;

  VoidCallback? onTapAqHistory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAqHistory!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 22.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_aq_history".tr,
                        style: CustomTextStyles.titleLarge_1,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_last_7_days".tr,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.v,
                      bottom: 12.v,
                    ),
                    child: CustomDropDown(
                      width: 87.h,
                      icon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      hintText: "lbl_weekly".tr,
                      items: aqhistoryItemModelObj.dropdownItemList!.value,
                      onChanged: (value) {
                        selectedDropDownValue = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16.v),
                  Container(
                    height: 1.v,
                    width: 280.h,
                    decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.08),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    height: 95.v,
                    width: 280.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 1.v,
                            width: 280.h,
                            margin: EdgeInsets.only(top: 11.v),
                            decoration: BoxDecoration(
                              color: appTheme.black900.withOpacity(0.08),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 1.v,
                            width: 280.h,
                            margin: EdgeInsets.only(top: 39.v),
                            decoration: BoxDecoration(
                              color: appTheme.black900.withOpacity(0.08),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 1.v,
                            width: 280.h,
                            margin: EdgeInsets.only(bottom: 27.v),
                            decoration: BoxDecoration(
                              color: appTheme.black900.withOpacity(0.08),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgChart,
                          height: 80.v,
                          width: 280.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              right: 5.h,
                              bottom: 5.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 60.v,
                                    right: 5.h,
                                  ),
                                  padding: EdgeInsets.all(1.h),
                                  decoration:
                                      AppDecoration.fillGreenA70001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_2".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 30.v,
                                  ),
                                  padding: EdgeInsets.all(1.h),
                                  decoration: AppDecoration.fillOrange.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 5.v),
                                        Text(
                                          "lbl_5".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(5.h, 12.v, 5.h, 48.v),
                                  padding: EdgeInsets.all(1.h),
                                  decoration:
                                      AppDecoration.fillDeepOrangeA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_7".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(5.h, 40.v, 5.h, 20.v),
                                  padding: EdgeInsets.all(1.h),
                                  decoration: AppDecoration.fillYellow.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_4".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(5.h, 50.v, 5.h, 10.v),
                                  padding: EdgeInsets.all(1.h),
                                  decoration:
                                      AppDecoration.fillGreenA70001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_3".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 5.h,
                                    right: 5.h,
                                    bottom: 60.v,
                                  ),
                                  padding: EdgeInsets.all(1.h),
                                  decoration: AppDecoration.fillOrange.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_8".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 5.h,
                                    top: 60.v,
                                  ),
                                  padding: EdgeInsets.all(1.h),
                                  decoration:
                                      AppDecoration.fillGreenA70001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_2".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA70010,
                                        ),
                                      ],
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
                  Container(
                    height: 1.v,
                    width: 280.h,
                    decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.08),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_sat".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_sun".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_mon".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_tue".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_wed".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_thu".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                        Text(
                          "lbl_fri".tr,
                          style: CustomTextStyles.bodySmallBlack90010_2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
