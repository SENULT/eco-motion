import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/details_controller.dart';
import '../models/weathercard_item_model.dart';

// ignore: must_be_immutable
class WeathercardItemWidget extends StatelessWidget {
  WeathercardItemWidget(
    this.weathercardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WeathercardItemModel weathercardItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    weathercardItemModelObj.weather!.value,
                    style: CustomTextStyles.bodySmallBlack90012,
                  ),
                ),
                Obx(
                  () => Text(
                    weathercardItemModelObj.weather1!.value,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 8.v),
            child: Obx(
              () => Text(
                weathercardItemModelObj.weather2!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 13.v,
            ),
            child: Obx(
              () => Text(
                weathercardItemModelObj.weather3!.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTemparatureHigh,
            height: 6.v,
            width: 4.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 8.v,
            ),
            child: Obx(
              () => Text(
                weathercardItemModelObj.weather4!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 13.v,
            ),
            child: Obx(
              () => Text(
                weathercardItemModelObj.weather5!.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTemparatureLow,
            height: 6.v,
            width: 4.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: weathercardItemModelObj.weatherImage!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 6.v,
                bottom: 6.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
