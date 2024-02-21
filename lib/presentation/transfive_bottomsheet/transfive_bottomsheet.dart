import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/transfive_controller.dart';

class TransfiveBottomsheet extends StatelessWidget {
  TransfiveBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  TransfiveController controller;

  @override
  Widget build(BuildContext context) {
    return _buildScrollView();
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL31,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 34.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 38.v),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillDeepPurple.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: 7.v,
                            width: 6.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray50,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: SizedBox(
                              height: 33.v,
                              child: VerticalDivider(
                                width: 2.h,
                                thickness: 2.v,
                                color: appTheme.deepPurple900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        bottom: 29.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 152.h,
                            child: Divider(
                              color: appTheme.deepPurple900,
                              indent: 97.h,
                            ),
                          ),
                          SizedBox(height: 25.v),
                          CustomTextFormField(
                            controller: controller.locationController,
                            hintText: "lbl_your_location".tr,
                            hintStyle:
                                CustomTextStyles.bodyMediumCustomBlack900,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 3.h,
                              vertical: 9.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 22.v,
                    width: 12.h,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 7.v,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: CustomTextFormField(
                        controller: controller.locationController1,
                        hintText: "msg_mar_venus_restaurant2".tr,
                        hintStyle: CustomTextStyles.bodyMediumCustomBlack900,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 9.v,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgShare,
                    height: 20.v,
                    width: 21.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 7.v,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 47.v),
          ],
        ),
      ),
    );
  }
}
