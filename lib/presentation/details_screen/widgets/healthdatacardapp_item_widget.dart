import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/details_controller.dart';
import '../models/healthdatacardapp_item_model.dart';

// ignore: must_be_immutable
class HealthdatacardappItemWidget extends StatelessWidget {
  HealthdatacardappItemWidget(
    this.healthdatacardappItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthdatacardappItemModel healthdatacardappItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.v),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserLightGreenA700,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 32.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    healthdatacardappItemModelObj.pageTitle!.value,
                    style: CustomTextStyles.bodySmall12_1,
                  ),
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 158.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_with_this_level2".tr,
                          style: CustomTextStyles.bodySmallb7000000,
                        ),
                        TextSpan(
                          text: "lbl_show_more".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
