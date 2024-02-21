import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/dashboard_four_controller.dart';
import '../models/locationdatacard_item_model.dart';

// ignore: must_be_immutable
class LocationdatacardItemWidget extends StatelessWidget {
  LocationdatacardItemWidget(
    this.locationdatacardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationdatacardItemModel locationdatacardItemModelObj;

  var controller = Get.find<DashboardFourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    locationdatacardItemModelObj.pageTitle!.value,
                    style: CustomTextStyles.bodySmallBlack90012,
                  ),
                ),
                SizedBox(
                  width: 36.h,
                  child: Obx(
                    () => Text(
                      locationdatacardItemModelObj.pageTitle1!.value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            locationdatacardItemModelObj.userImage!.value,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(
                          top: 11.v,
                          bottom: 3.v,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Obx(
                        () => Text(
                          locationdatacardItemModelObj.pageTitle2!.value,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 8.v,
                        bottom: 3.v,
                      ),
                      child: Obx(
                        () => Text(
                          locationdatacardItemModelObj.weather!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 100.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 17.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        locationdatacardItemModelObj.weather1!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 5.v,
                      ),
                      child: Obx(
                        () => Text(
                          locationdatacardItemModelObj.weather2!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            locationdatacardItemModelObj.weatherIcons!.value,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 6.v,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
